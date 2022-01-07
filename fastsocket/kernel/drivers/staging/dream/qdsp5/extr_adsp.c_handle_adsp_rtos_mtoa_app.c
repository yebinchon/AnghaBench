
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t uint32_t ;
struct rpc_request_hdr {int xid; } ;
struct adsp_rtos_mp_mtoa_init_info_type {size_t image_count; size_t num_queue_offsets; size_t** queue_offsets; size_t num_task_module_entries; size_t** task_to_module_tbl; size_t module_table_size; size_t* module_entries; struct queue_to_offset_type** queue_offsets_tbl; } ;
struct adsp_rtos_mp_mtoa_type {size_t module; size_t image; } ;
struct TYPE_9__ {struct adsp_rtos_mp_mtoa_init_info_type mp_mtoa_init_packet; struct adsp_rtos_mp_mtoa_type mp_mtoa_packet; } ;
struct TYPE_8__ {size_t event; size_t proc_id; } ;
struct TYPE_10__ {size_t desc_field; TYPE_3__ adsp_rtos_mp_mtoa_data; TYPE_2__ mp_mtoa_header; } ;
struct rpc_adsp_rtos_modem_to_app_args_t {size_t event; size_t proc_id; size_t module; size_t image; TYPE_4__ mtoa_pkt; } ;
struct queue_to_offset_type {size_t offset; size_t queue; } ;
struct msm_adsp_module {size_t name; int driver_data; TYPE_1__* ops; int lock; int state_wait; void* state; int info; } ;
typedef size_t int32_t ;
struct TYPE_11__ {int init_info_wait; int init_info_state; struct adsp_rtos_mp_mtoa_init_info_type* init_info_ptr; } ;
struct TYPE_7__ {int (* event ) (int ,int ,int ,int ) ;} ;


 void* ADSP_STATE_DISABLED ;
 void* ADSP_STATE_ENABLED ;
 int ADSP_STATE_INIT_INFO ;
 int EVENT_LEN ;
 int EVENT_MSG_ID ;
 int RPC_ACCEPTSTAT_GARBAGE_ARGS ;
 int RPC_ACCEPTSTAT_SUCCESS ;



 scalar_t__ RPC_ADSP_RTOS_INIT_INFO ;



 TYPE_5__ adsp_info ;
 int adsp_set_image (int ,size_t) ;
 scalar_t__ be32_to_cpu (size_t) ;
 struct msm_adsp_module* find_adsp_module_by_id (TYPE_5__*,size_t) ;
 size_t* modem_event_addr ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_err (char*,size_t) ;
 int pr_info (char*,...) ;
 int read_modem_event ;
 int rpc_cb_server_client ;
 int rpc_send_accepted_void_reply (int ,int ,int ) ;
 int stub1 (int ,int ,int ,int ) ;
 int wake_up (int *) ;

__attribute__((used)) static void handle_adsp_rtos_mtoa_app(struct rpc_request_hdr *req)
{
 struct rpc_adsp_rtos_modem_to_app_args_t *args =
  (struct rpc_adsp_rtos_modem_to_app_args_t *)req;
 uint32_t event;
 uint32_t proc_id;
 uint32_t module_id;
 uint32_t image;
 struct msm_adsp_module *module;
 event = be32_to_cpu(args->event);
 proc_id = be32_to_cpu(args->proc_id);
 module_id = be32_to_cpu(args->module);
 image = be32_to_cpu(args->image);


 pr_info("adsp: rpc event=%d, proc_id=%d, module=%d, image=%d\n",
  event, proc_id, module_id, image);

 module = find_adsp_module_by_id(&adsp_info, module_id);
 if (!module) {
  pr_err("adsp: module %d is not supported!\n", module_id);
  rpc_send_accepted_void_reply(rpc_cb_server_client, req->xid,
    RPC_ACCEPTSTAT_GARBAGE_ARGS);
  return;
 }

 mutex_lock(&module->lock);
 switch (event) {
 case 129:
  pr_info("adsp: module %s: READY\n", module->name);
  module->state = ADSP_STATE_ENABLED;
  wake_up(&module->state_wait);
  adsp_set_image(module->info, image);
  break;
 case 130:
  pr_info("adsp: module %s: DISABLED\n", module->name);
  module->state = ADSP_STATE_DISABLED;
  wake_up(&module->state_wait);
  break;
 case 128:
  pr_info("adsp: module %s: SERVICE_RESET\n", module->name);
  module->state = ADSP_STATE_DISABLED;
  wake_up(&module->state_wait);
  break;
 case 132:
  pr_info("adsp: module %s: CMD_SUCCESS\n", module->name);
  break;
 case 133:
  pr_info("adsp: module %s: CMD_FAIL\n", module->name);
  break;





 default:
  pr_info("adsp: unknown event %d\n", event);
  rpc_send_accepted_void_reply(rpc_cb_server_client, req->xid,
          RPC_ACCEPTSTAT_GARBAGE_ARGS);
  mutex_unlock(&module->lock);
  return;
 }
 rpc_send_accepted_void_reply(rpc_cb_server_client, req->xid,
         RPC_ACCEPTSTAT_SUCCESS);
 mutex_unlock(&module->lock);





}
