
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_adsp_module {scalar_t__ open_count; scalar_t__ state; int lock; int name; scalar_t__ rpc_client; int * driver_data; int * ops; scalar_t__ clk; } ;


 scalar_t__ ADSP_STATE_DISABLED ;
 int INT_ADSP ;
 int adsp_cmd_lock ;
 scalar_t__ adsp_open_count ;
 int allow_suspend () ;
 int clk_disable (scalar_t__) ;
 int disable_irq (int ) ;
 int msm_adsp_disable_locked (struct msm_adsp_module*) ;
 int msm_rpc_close (scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_info (char*,...) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void msm_adsp_put(struct msm_adsp_module *module)
{
 unsigned long flags;

 mutex_lock(&module->lock);
 if (--module->open_count == 0 && module->clk)
  clk_disable(module->clk);
 if (module->ops) {
  pr_info("adsp: closing module %s\n", module->name);




  spin_lock_irqsave(&adsp_cmd_lock, flags);
  module->ops = ((void*)0);
  module->driver_data = ((void*)0);
  spin_unlock_irqrestore(&adsp_cmd_lock, flags);

  if (module->state != ADSP_STATE_DISABLED) {
   pr_info("adsp: disabling module %s\n", module->name);
   msm_adsp_disable_locked(module);
  }

  msm_rpc_close(module->rpc_client);
  module->rpc_client = 0;
  if (--adsp_open_count == 0) {
   disable_irq(INT_ADSP);
   allow_suspend();
   pr_info("adsp: disable interrupt\n");
  }
 } else {
  pr_info("adsp: module %s is already closed\n", module->name);
 }
 mutex_unlock(&module->lock);
}
