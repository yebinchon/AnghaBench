
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct platform_device {int dummy; } ;
struct TYPE_6__ {int id; int name; } ;
struct msm_adsp_module {size_t id; TYPE_2__ pdev; int pmem_regions; int patch_event; int verify_cmd; int * clk; int name; TYPE_3__* info; int state_wait; int lock; } ;
struct adsp_rtos_mp_mtoa_init_info_type {int dummy; } ;
struct TYPE_7__ {unsigned int module_count; int max_module_id; struct msm_adsp_module* init_info_ptr; struct msm_adsp_module** id_to_module; TYPE_1__* module; int write_ctrl; int read_ctrl; int send_irq; } ;
struct TYPE_5__ {size_t id; int pdev_name; int patch_event; int verify_cmd; scalar_t__ clk_rate; scalar_t__ clk_name; int name; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_HLIST_HEAD (int *) ;
 int INT_ADSP ;
 int IRQF_TRIGGER_RISING ;
 scalar_t__ IS_ERR (int *) ;
 scalar_t__ MSM_AD5_BASE ;
 int PTR_ERR (int *) ;
 int RPC_ADSP_RTOS_MTOA_PROG ;
 int RPC_ADSP_RTOS_MTOA_VERS ;
 int WAKE_LOCK_SUSPEND ;
 int adsp_cmd_lock ;
 TYPE_3__ adsp_info ;
 int adsp_init_info (TYPE_3__*) ;
 int adsp_irq_handler ;
 struct msm_adsp_module* adsp_modules ;
 int adsp_rpc_thread ;
 int adsp_wake_lock ;
 int * clk_get (int *,scalar_t__) ;
 int clk_set_rate (int *,scalar_t__) ;
 int disable_irq (int ) ;
 int enable_irq (int ) ;
 int free_irq (int ,int ) ;
 int init_waitqueue_head (int *) ;
 int kfree (struct msm_adsp_module*) ;
 int kthread_run (int ,int *,char*) ;
 void* kzalloc (int,int ) ;
 int msm_adsp_publish_cdevs (struct msm_adsp_module*,unsigned int) ;
 int msm_rpc_close (int *) ;
 int * msm_rpc_open () ;
 int msm_rpc_register_server (int *,int ,int ) ;
 int mutex_init (int *) ;
 int platform_device_register (TYPE_2__*) ;
 int pr_err (char*,int) ;
 int pr_info (char*) ;
 int request_irq (int ,int ,int ,char*,int ) ;
 int * rpc_cb_server_client ;
 int spin_lock_init (int *) ;
 int wake_lock_init (int *,int ,char*) ;

__attribute__((used)) static int msm_adsp_probe(struct platform_device *pdev)
{
 unsigned count;
 int rc, i;
 int max_module_id;

 pr_info("adsp: probe\n");

 wake_lock_init(&adsp_wake_lock, WAKE_LOCK_SUSPEND, "adsp");







 rc = adsp_init_info(&adsp_info);
 if (rc)
  return rc;
 adsp_info.send_irq += (uint32_t) MSM_AD5_BASE;
 adsp_info.read_ctrl += (uint32_t) MSM_AD5_BASE;
 adsp_info.write_ctrl += (uint32_t) MSM_AD5_BASE;
 count = adsp_info.module_count;




 max_module_id = adsp_info.max_module_id + 1;


 adsp_modules = kzalloc(
  sizeof(struct msm_adsp_module) * count +
  sizeof(void *) * max_module_id, GFP_KERNEL);
 if (!adsp_modules)
  return -ENOMEM;

 adsp_info.id_to_module = (void *) (adsp_modules + count);

 spin_lock_init(&adsp_cmd_lock);

 rc = request_irq(INT_ADSP, adsp_irq_handler, IRQF_TRIGGER_RISING,
    "adsp", 0);
 if (rc < 0)
  goto fail_request_irq;
 disable_irq(INT_ADSP);

 rpc_cb_server_client = msm_rpc_open();
 if (IS_ERR(rpc_cb_server_client)) {
  rpc_cb_server_client = ((void*)0);
  rc = PTR_ERR(rpc_cb_server_client);
  pr_err("adsp: could not create rpc server (%d)\n", rc);
  goto fail_rpc_open;
 }

 rc = msm_rpc_register_server(rpc_cb_server_client,
         RPC_ADSP_RTOS_MTOA_PROG,
         RPC_ADSP_RTOS_MTOA_VERS);
 if (rc) {
  pr_err("adsp: could not register callback server (%d)\n", rc);
  goto fail_rpc_register;
 }


 kthread_run(adsp_rpc_thread, ((void*)0), "kadspd");

 for (i = 0; i < count; i++) {
  struct msm_adsp_module *mod = adsp_modules + i;
  mutex_init(&mod->lock);
  init_waitqueue_head(&mod->state_wait);
  mod->info = &adsp_info;
  mod->name = adsp_info.module[i].name;
  mod->id = adsp_info.module[i].id;
  if (adsp_info.module[i].clk_name)
   mod->clk = clk_get(((void*)0), adsp_info.module[i].clk_name);
  else
   mod->clk = ((void*)0);
  if (mod->clk && adsp_info.module[i].clk_rate)
   clk_set_rate(mod->clk, adsp_info.module[i].clk_rate);
  mod->verify_cmd = adsp_info.module[i].verify_cmd;
  mod->patch_event = adsp_info.module[i].patch_event;
  INIT_HLIST_HEAD(&mod->pmem_regions);
  mod->pdev.name = adsp_info.module[i].pdev_name;
  mod->pdev.id = -1;



  adsp_info.id_to_module[mod->id] = mod;

  platform_device_register(&mod->pdev);
 }

 msm_adsp_publish_cdevs(adsp_modules, count);

 return 0;

fail_rpc_register:
 msm_rpc_close(rpc_cb_server_client);
 rpc_cb_server_client = ((void*)0);
fail_rpc_open:
 enable_irq(INT_ADSP);
 free_irq(INT_ADSP, 0);
fail_request_irq:
 kfree(adsp_modules);



 return rc;
}
