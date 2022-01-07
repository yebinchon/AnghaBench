
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_adsp_module {int state; int lock; int name; int state_wait; int id; } ;






 int EBUSY ;
 int ETIMEDOUT ;
 int HZ ;
 int RPC_ADSP_RTOS_CMD_ENABLE ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_err (char*,int ) ;
 int pr_info (char*,int ,int,int ) ;
 int pr_warning (char*,int ) ;
 int rpc_adsp_rtos_app_to_modem (int ,int ,struct msm_adsp_module*) ;
 int wait_event_timeout (int ,int,int) ;

int msm_adsp_enable(struct msm_adsp_module *module)
{
 int rc = 0;

 pr_info("msm_adsp_enable() '%s'state[%d] id[%d]\n",
  module->name, module->state, module->id);

 mutex_lock(&module->lock);
 switch (module->state) {
 case 131:
  rc = rpc_adsp_rtos_app_to_modem(RPC_ADSP_RTOS_CMD_ENABLE,
      module->id, module);
  if (rc)
   break;
  module->state = 128;
  mutex_unlock(&module->lock);
  rc = wait_event_timeout(module->state_wait,
     module->state != 128,
     1 * HZ);
  mutex_lock(&module->lock);
  if (module->state == 129) {
   rc = 0;
  } else {
   pr_err("adsp: module '%s' enable timed out\n",
          module->name);
   rc = -ETIMEDOUT;
  }
  break;
 case 128:
  pr_warning("adsp: module '%s' enable in progress\n",
      module->name);
  break;
 case 129:
  pr_warning("adsp: module '%s' already enabled\n",
      module->name);
  break;
 case 130:
  pr_err("adsp: module '%s' disable in progress\n",
         module->name);
  rc = -EBUSY;
  break;
 }
 mutex_unlock(&module->lock);
 return rc;
}
