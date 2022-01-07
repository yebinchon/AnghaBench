
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct audpp_state {int lock; scalar_t__ enabled; int mod; int ** private; int ** func; scalar_t__ open_count; } ;
typedef int * audpp_event_func ;


 int AUDPP_MSG_CFG_MSG ;
 int AUDPP_MSG_ENA_ENA ;
 int EBUSY ;
 int EINVAL ;
 int EV_ENABLE ;
 int LOG (int ,int) ;
 int adsp_ops ;
 int audpp_dsp_config (int) ;
 int audpp_fake_event (struct audpp_state*,int,int ,int ) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int msm_adsp_enable (int ) ;
 int msm_adsp_get (char*,int *,int *,struct audpp_state*) ;
 int mutex_lock (int ) ;
 int mutex_unlock (int ) ;
 int pr_err (char*) ;
 int pr_info (char*) ;
 struct audpp_state the_audpp_state ;

int audpp_enable(int id, audpp_event_func func, void *private)
{
 struct audpp_state *audpp = &the_audpp_state;
 int res = 0;

 if (id < -1 || id > 4)
  return -EINVAL;

 if (id == -1)
  id = 5;

 mutex_lock(audpp->lock);
 if (audpp->func[id]) {
  res = -EBUSY;
  goto out;
 }

 audpp->func[id] = func;
 audpp->private[id] = private;

 LOG(EV_ENABLE, 1);
 if (audpp->open_count++ == 0) {
  pr_info("audpp: enable\n");
  res = msm_adsp_get("AUDPPTASK", &audpp->mod, &adsp_ops, audpp);
  if (res < 0) {
   pr_err("audpp: cannot open AUDPPTASK\n");
   audpp->open_count = 0;
   audpp->func[id] = ((void*)0);
   audpp->private[id] = ((void*)0);
   goto out;
  }
  LOG(EV_ENABLE, 2);
  msm_adsp_enable(audpp->mod);
  audpp_dsp_config(1);
 } else {
  unsigned long flags;
  local_irq_save(flags);
  if (audpp->enabled)
   audpp_fake_event(audpp, id,
      AUDPP_MSG_CFG_MSG, AUDPP_MSG_ENA_ENA);
  local_irq_restore(flags);
 }

 res = 0;
out:
 mutex_unlock(audpp->lock);
 return res;
}
