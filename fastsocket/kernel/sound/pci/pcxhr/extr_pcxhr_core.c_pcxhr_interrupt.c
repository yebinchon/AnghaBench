
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcxhr {int nb_streams_capt; int nb_streams_play; int * playback_stream; int * capture_stream; } ;
struct pcxhr_mgr {int dsp_time_last; int granularity; int timer_toggle; int num_cards; unsigned int src_it_dsp; int lock; int msg_taskq; struct snd_pcxhr** chip; int dsp_time_err; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int PCXHR_DSP_TIME_INVALID ;
 int PCXHR_DSP_TIME_MASK ;
 unsigned int PCXHR_FATAL_DSP_ERR ;
 int PCXHR_INPL (struct pcxhr_mgr*,int ) ;
 unsigned int PCXHR_IRQCS_ACTIVE_PCIDB ;
 unsigned int PCXHR_IRQ_ASYNC ;
 unsigned int PCXHR_IRQ_MASK ;
 unsigned int PCXHR_IRQ_TIMER ;
 int PCXHR_OUTPL (struct pcxhr_mgr*,int ,unsigned int) ;
 int PCXHR_PLX_IRQCS ;
 int PCXHR_PLX_L2PCIDB ;
 int PCXHR_PLX_MBOX4 ;
 int pcxhr_update_timer_pos (struct pcxhr_mgr*,int *,int) ;
 int snd_printdd (char*,...) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int tasklet_schedule (int *) ;

irqreturn_t pcxhr_interrupt(int irq, void *dev_id)
{
 struct pcxhr_mgr *mgr = dev_id;
 unsigned int reg;
 int i, j;
 struct snd_pcxhr *chip;

 spin_lock(&mgr->lock);

 reg = PCXHR_INPL(mgr, PCXHR_PLX_IRQCS);
 if (! (reg & PCXHR_IRQCS_ACTIVE_PCIDB)) {
  spin_unlock(&mgr->lock);

  return IRQ_NONE;
 }


 reg = PCXHR_INPL(mgr, PCXHR_PLX_L2PCIDB);
 PCXHR_OUTPL(mgr, PCXHR_PLX_L2PCIDB, reg);


 if (reg & PCXHR_IRQ_TIMER) {
  int timer_toggle = reg & PCXHR_IRQ_TIMER;

  int dsp_time_new =
   PCXHR_INPL(mgr, PCXHR_PLX_MBOX4) & PCXHR_DSP_TIME_MASK;
  int dsp_time_diff = dsp_time_new - mgr->dsp_time_last;

  if ((dsp_time_diff < 0) &&
      (mgr->dsp_time_last != PCXHR_DSP_TIME_INVALID)) {
   snd_printdd("ERROR DSP TIME old(%d) new(%d) -> "
        "resynchronize all streams\n",
        mgr->dsp_time_last, dsp_time_new);
   mgr->dsp_time_err++;
  }
  mgr->dsp_time_last = dsp_time_new;

  if (timer_toggle == mgr->timer_toggle) {
   snd_printdd("ERROR TIMER TOGGLE\n");
   mgr->dsp_time_err++;
  }
  mgr->timer_toggle = timer_toggle;

  reg &= ~PCXHR_IRQ_TIMER;
  for (i = 0; i < mgr->num_cards; i++) {
   chip = mgr->chip[i];
   for (j = 0; j < chip->nb_streams_capt; j++)
    pcxhr_update_timer_pos(mgr,
      &chip->capture_stream[j],
      dsp_time_diff);
  }
  for (i = 0; i < mgr->num_cards; i++) {
   chip = mgr->chip[i];
   for (j = 0; j < chip->nb_streams_play; j++)
    pcxhr_update_timer_pos(mgr,
      &chip->playback_stream[j],
      dsp_time_diff);
  }
 }

 if (reg & PCXHR_IRQ_MASK) {
  if (reg & PCXHR_IRQ_ASYNC) {




   mgr->dsp_time_last = PCXHR_DSP_TIME_INVALID;
  }
  mgr->src_it_dsp = reg;
  tasklet_schedule(&mgr->msg_taskq);
 }




 spin_unlock(&mgr->lock);
 return IRQ_HANDLED;
}
