
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct msm_adsp_ops {int dummy; } ;
struct msm_adsp_module {scalar_t__ open_count; int lock; scalar_t__ clk; int name; int * driver_data; struct msm_adsp_ops* ops; int id; } ;
struct TYPE_3__ {scalar_t__ init_info_state; int init_info_wait; } ;


 scalar_t__ ADSP_STATE_INIT_INFO ;
 int EBUSY ;
 int ENODEV ;
 int ETIMEDOUT ;
 int HZ ;
 int INT_ADSP ;
 int RPC_ADSP_RTOS_CMD_REGISTER_APP ;
 TYPE_1__ adsp_info ;
 scalar_t__ adsp_open_count ;
 int adsp_open_lock ;
 int adsp_rpc_init (struct msm_adsp_module*) ;
 int allow_suspend () ;
 int clk_disable (scalar_t__) ;
 int clk_enable (scalar_t__) ;
 int disable_irq (int ) ;
 int enable_irq (int ) ;
 struct msm_adsp_module* find_adsp_module_by_name (TYPE_1__*,char const*) ;
 int init_waitqueue_head (int *) ;
 int msm_get_init_info () ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_err (char*) ;
 int pr_info (char*,...) ;
 int prevent_suspend () ;
 int rpc_adsp_rtos_app_to_modem (int ,int ,struct msm_adsp_module*) ;
 int wait_event_timeout (int ,int,int) ;

int msm_adsp_get(const char *name, struct msm_adsp_module **out,
   struct msm_adsp_ops *ops, void *driver_data)
{
 struct msm_adsp_module *module;
 int rc = 0;
 module = find_adsp_module_by_name(&adsp_info, name);
 if (!module)
  return -ENODEV;

 mutex_lock(&module->lock);
 pr_info("adsp: opening module %s\n", module->name);
 if (module->open_count++ == 0 && module->clk)
  clk_enable(module->clk);

 mutex_lock(&adsp_open_lock);
 if (adsp_open_count++ == 0) {
  enable_irq(INT_ADSP);
  prevent_suspend();
 }
 mutex_unlock(&adsp_open_lock);

 if (module->ops) {
  rc = -EBUSY;
  goto done;
 }

 rc = adsp_rpc_init(module);
 if (rc)
  goto done;

 module->ops = ops;
 module->driver_data = driver_data;
 *out = module;
 rc = rpc_adsp_rtos_app_to_modem(RPC_ADSP_RTOS_CMD_REGISTER_APP,
     module->id, module);
 if (rc) {
  module->ops = ((void*)0);
  module->driver_data = ((void*)0);
  *out = ((void*)0);
  pr_err("adsp: REGISTER_APP failed\n");
  goto done;
 }

 pr_info("adsp: module %s has been registered\n", module->name);

done:
 mutex_lock(&adsp_open_lock);
 if (rc && --adsp_open_count == 0) {
  disable_irq(INT_ADSP);
  allow_suspend();
 }
 if (rc && --module->open_count == 0 && module->clk)
  clk_disable(module->clk);
 mutex_unlock(&adsp_open_lock);
 mutex_unlock(&module->lock);
 return rc;
}
