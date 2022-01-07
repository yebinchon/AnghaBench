
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int INT_A9_M2A_0 ;
 int INT_A9_M2A_5 ;
 int IRQF_TRIGGER_RISING ;
 int enable_irq_wake (int ) ;
 int free_irq (int ,int ) ;
 int pr_err (char*) ;
 int pr_info (char*) ;
 int request_irq (int ,int (*) (int ,int ),int ,char*,int ) ;
 int smd_irq_handler (int ,int ) ;
 int smsm_irq_handler (int ,int ) ;

int smd_core_init(void)
{
 int r;
 pr_info("smd_core_init()\n");

 r = request_irq(INT_A9_M2A_0, smd_irq_handler,
   IRQF_TRIGGER_RISING, "smd_dev", 0);
 if (r < 0)
  return r;
 r = enable_irq_wake(INT_A9_M2A_0);
 if (r < 0)
  pr_err("smd_core_init: enable_irq_wake failed for A9_M2A_0\n");

 r = request_irq(INT_A9_M2A_5, smsm_irq_handler,
   IRQF_TRIGGER_RISING, "smsm_dev", 0);
 if (r < 0) {
  free_irq(INT_A9_M2A_0, 0);
  return r;
 }
 r = enable_irq_wake(INT_A9_M2A_5);
 if (r < 0)
  pr_err("smd_core_init: enable_irq_wake failed for A9_M2A_5\n");





 smsm_irq_handler(0, 0);

 pr_info("smd_core_init() done\n");

 return 0;
}
