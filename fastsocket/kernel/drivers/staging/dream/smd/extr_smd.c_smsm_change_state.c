
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct smsm_shared {int state; } ;


 int EIO ;
 int ID_SHARED_STATE ;
 int MSM_SMSM_DEBUG ;
 int SMSM_RESET ;
 int handle_modem_crash () ;
 int msm_smd_debug_mask ;
 int notify_other_smsm () ;
 int pr_err (char*) ;
 int pr_info (char*,int) ;
 struct smsm_shared* smem_alloc (int ,int) ;
 int smem_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int smsm_change_state(uint32_t clear_mask, uint32_t set_mask)
{
 unsigned long flags;
 struct smsm_shared *smsm;

 spin_lock_irqsave(&smem_lock, flags);

 smsm = smem_alloc(ID_SHARED_STATE,
     2 * sizeof(struct smsm_shared));

 if (smsm) {
  if (smsm[1].state & SMSM_RESET)
   handle_modem_crash();
  smsm[0].state = (smsm[0].state & ~clear_mask) | set_mask;
  if (msm_smd_debug_mask & MSM_SMSM_DEBUG)
   pr_info("smsm_change_state %x\n",
          smsm[0].state);
  notify_other_smsm();
 }

 spin_unlock_irqrestore(&smem_lock, flags);

 if (smsm == ((void*)0)) {
  pr_err("smsm_change_state <SM NO STATE>\n");
  return -EIO;
 }
 return 0;
}
