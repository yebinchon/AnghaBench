
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_opl4 {int chset; int off_voices; TYPE_1__* voices; int on_voices; int reg_lock; } ;
struct TYPE_2__ {int number; int list; } ;


 int INIT_LIST_HEAD (int *) ;
 int OPL4_DAMP_BIT ;
 int OPL4_MAX_VOICES ;
 scalar_t__ OPL4_REG_MISC ;
 int list_add_tail (int *,int *) ;
 int memset (TYPE_1__*,int ,int) ;
 int snd_midi_channel_set_clear (int ) ;
 int snd_opl4_write (struct snd_opl4*,scalar_t__,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void snd_opl4_synth_reset(struct snd_opl4 *opl4)
{
 unsigned long flags;
 int i;

 spin_lock_irqsave(&opl4->reg_lock, flags);
 for (i = 0; i < OPL4_MAX_VOICES; i++)
  snd_opl4_write(opl4, OPL4_REG_MISC + i, OPL4_DAMP_BIT);
 spin_unlock_irqrestore(&opl4->reg_lock, flags);

 INIT_LIST_HEAD(&opl4->off_voices);
 INIT_LIST_HEAD(&opl4->on_voices);
 memset(opl4->voices, 0, sizeof(opl4->voices));
 for (i = 0; i < OPL4_MAX_VOICES; i++) {
  opl4->voices[i].number = i;
  list_add_tail(&opl4->voices[i].list, &opl4->off_voices);
 }

 snd_midi_channel_set_clear(opl4->chset);
}
