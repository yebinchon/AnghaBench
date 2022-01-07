
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_adsp_module {int state; int id; int name; } ;





 int RPC_ADSP_RTOS_CMD_DISABLE ;
 int pr_warning (char*,int ) ;
 int rpc_adsp_rtos_app_to_modem (int ,int ,struct msm_adsp_module*) ;

__attribute__((used)) static int msm_adsp_disable_locked(struct msm_adsp_module *module)
{
 int rc = 0;

 switch (module->state) {
 case 130:
  pr_warning("adsp: module '%s' already disabled\n",
      module->name);
  break;
 case 128:
 case 129:
  rc = rpc_adsp_rtos_app_to_modem(RPC_ADSP_RTOS_CMD_DISABLE,
      module->id, module);
  module->state = 130;
 }
 return rc;
}
