
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct smsm_shared {int state; } ;


 int ID_SHARED_STATE ;
 int SMSM_RESET ;
 int handle_modem_crash () ;
 int pr_err (char*) ;
 struct smsm_shared* smem_alloc (int ,int) ;
 int smem_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

uint32_t smsm_get_state(void)
{
 unsigned long flags;
 struct smsm_shared *smsm;
 uint32_t rv;

 spin_lock_irqsave(&smem_lock, flags);

 smsm = smem_alloc(ID_SHARED_STATE,
     2 * sizeof(struct smsm_shared));

 if (smsm)
  rv = smsm[1].state;
 else
  rv = 0;

 if (rv & SMSM_RESET)
  handle_modem_crash();

 spin_unlock_irqrestore(&smem_lock, flags);

 if (smsm == ((void*)0))
  pr_err("smsm_get_state <SM NO STATE>\n");
 return rv;
}
