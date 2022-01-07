
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct audpp_state {void** private; scalar_t__ open_count; int lock; int * mod; int ** func; } ;


 int AUDPP_MSG_CFG_MSG ;
 int AUDPP_MSG_ENA_DIS ;
 int EV_DISABLE ;
 int LOG (int ,int) ;
 int audpp_dsp_config (int ) ;
 int audpp_fake_event (struct audpp_state*,int,int ,int ) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int msm_adsp_disable (int *) ;
 int msm_adsp_put (int *) ;
 int mutex_lock (int ) ;
 int mutex_unlock (int ) ;
 int pr_info (char*) ;
 struct audpp_state the_audpp_state ;

void audpp_disable(int id, void *private)
{
 struct audpp_state *audpp = &the_audpp_state;
 unsigned long flags;

 if (id < -1 || id > 4)
  return;

 if (id == -1)
  id = 5;

 mutex_lock(audpp->lock);
 LOG(EV_DISABLE, 1);
 if (!audpp->func[id])
  goto out;
 if (audpp->private[id] != private)
  goto out;

 local_irq_save(flags);
 audpp_fake_event(audpp, id, AUDPP_MSG_CFG_MSG, AUDPP_MSG_ENA_DIS);
 audpp->func[id] = ((void*)0);
 audpp->private[id] = ((void*)0);
 local_irq_restore(flags);

 if (--audpp->open_count == 0) {
  pr_info("audpp: disable\n");
  LOG(EV_DISABLE, 2);
  audpp_dsp_config(0);
  msm_adsp_disable(audpp->mod);
  msm_adsp_put(audpp->mod);
  audpp->mod = ((void*)0);
 }
out:
 mutex_unlock(audpp->lock);
}
