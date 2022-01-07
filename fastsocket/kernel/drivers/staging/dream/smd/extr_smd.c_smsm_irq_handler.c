
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smsm_shared {unsigned int state; } ;
typedef int irqreturn_t ;


 int ID_SHARED_STATE ;
 int IRQ_HANDLED ;
 int MSM_SMSM_DEBUG ;
 unsigned int SMSM_INIT ;
 unsigned int SMSM_RESET ;
 unsigned int SMSM_RPCINIT ;
 unsigned int SMSM_SMDINIT ;
 int do_smd_probe () ;
 int handle_modem_crash () ;
 int msm_smd_debug_mask ;
 int notify_other_smsm () ;
 int pr_info (char*,...) ;
 struct smsm_shared* smem_alloc (int ,int) ;
 int smem_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static irqreturn_t smsm_irq_handler(int irq, void *data)
{
 unsigned long flags;
 struct smsm_shared *smsm;

 spin_lock_irqsave(&smem_lock, flags);
 smsm = smem_alloc(ID_SHARED_STATE,
     2 * sizeof(struct smsm_shared));

 if (smsm == 0) {
  pr_info("<SM NO STATE>\n");
 } else {
  unsigned apps = smsm[0].state;
  unsigned modm = smsm[1].state;

  if (msm_smd_debug_mask & MSM_SMSM_DEBUG)
   pr_info("<SM %08x %08x>\n", apps, modm);
  if (modm & SMSM_RESET) {
   handle_modem_crash();
  } else {
   apps |= SMSM_INIT;
   if (modm & SMSM_SMDINIT)
    apps |= SMSM_SMDINIT;
   if (modm & SMSM_RPCINIT)
    apps |= SMSM_RPCINIT;
  }

  if (smsm[0].state != apps) {
   if (msm_smd_debug_mask & MSM_SMSM_DEBUG)
    pr_info("<SM %08x NOTIFY>\n", apps);
   smsm[0].state = apps;
   do_smd_probe();
   notify_other_smsm();
  }
 }
 spin_unlock_irqrestore(&smem_lock, flags);
 return IRQ_HANDLED;
}
