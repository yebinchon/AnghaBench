
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int enb; } ;
union cvmx_fpa_ctl_status {TYPE_1__ s; int u64; } ;
typedef scalar_t__ cvmx_cmd_queue_result_t ;
typedef int cvmx_cmd_queue_id_t ;
struct TYPE_7__ {int base_ptr_div128; int max_depth; int fpa_pool; int pool_size_m1; } ;
typedef TYPE_2__ __cvmx_cmd_queue_state_t ;
struct TYPE_8__ {scalar_t__* ticket; } ;


 scalar_t__ CVMX_CMD_QUEUE_ALREADY_SETUP ;
 scalar_t__ CVMX_CMD_QUEUE_ENABLE_MAX_DEPTH ;
 scalar_t__ CVMX_CMD_QUEUE_INVALID_PARAM ;
 scalar_t__ CVMX_CMD_QUEUE_NO_MEMORY ;
 scalar_t__ CVMX_CMD_QUEUE_SUCCESS ;
 int CVMX_FPA_CTL_STATUS ;
 int CVMX_SYNCWS ;
 size_t __cvmx_cmd_queue_get_index (int ) ;
 TYPE_2__* __cvmx_cmd_queue_get_state (int ) ;
 scalar_t__ __cvmx_cmd_queue_init_state_ptr () ;
 TYPE_4__* __cvmx_cmd_queue_state_ptr ;
 int cvmx_dprintf (char*,...) ;
 void* cvmx_fpa_alloc (int) ;
 int cvmx_ptr_to_phys (void*) ;
 int cvmx_read_csr (int ) ;
 int memset (TYPE_2__*,int ,int) ;

cvmx_cmd_queue_result_t cvmx_cmd_queue_initialize(cvmx_cmd_queue_id_t queue_id,
        int max_depth, int fpa_pool,
        int pool_size)
{
 __cvmx_cmd_queue_state_t *qstate;
 cvmx_cmd_queue_result_t result = __cvmx_cmd_queue_init_state_ptr();
 if (result != CVMX_CMD_QUEUE_SUCCESS)
  return result;

 qstate = __cvmx_cmd_queue_get_state(queue_id);
 if (qstate == ((void*)0))
  return CVMX_CMD_QUEUE_INVALID_PARAM;





 if (CVMX_CMD_QUEUE_ENABLE_MAX_DEPTH) {
  if ((max_depth < 0) || (max_depth > 1 << 20))
   return CVMX_CMD_QUEUE_INVALID_PARAM;
 } else if (max_depth != 0)
  return CVMX_CMD_QUEUE_INVALID_PARAM;

 if ((fpa_pool < 0) || (fpa_pool > 7))
  return CVMX_CMD_QUEUE_INVALID_PARAM;
 if ((pool_size < 128) || (pool_size > 65536))
  return CVMX_CMD_QUEUE_INVALID_PARAM;


 if (qstate->base_ptr_div128) {
  if (max_depth != (int)qstate->max_depth) {
   cvmx_dprintf("ERROR: cvmx_cmd_queue_initialize: "
    "Queue already initalized with different "
    "max_depth (%d).\n",
        (int)qstate->max_depth);
   return CVMX_CMD_QUEUE_INVALID_PARAM;
  }
  if (fpa_pool != qstate->fpa_pool) {
   cvmx_dprintf("ERROR: cvmx_cmd_queue_initialize: "
    "Queue already initalized with different "
    "FPA pool (%u).\n",
        qstate->fpa_pool);
   return CVMX_CMD_QUEUE_INVALID_PARAM;
  }
  if ((pool_size >> 3) - 1 != qstate->pool_size_m1) {
   cvmx_dprintf("ERROR: cvmx_cmd_queue_initialize: "
    "Queue already initalized with different "
    "FPA pool size (%u).\n",
        (qstate->pool_size_m1 + 1) << 3);
   return CVMX_CMD_QUEUE_INVALID_PARAM;
  }
  CVMX_SYNCWS;
  return CVMX_CMD_QUEUE_ALREADY_SETUP;
 } else {
  union cvmx_fpa_ctl_status status;
  void *buffer;

  status.u64 = cvmx_read_csr(CVMX_FPA_CTL_STATUS);
  if (!status.s.enb) {
   cvmx_dprintf("ERROR: cvmx_cmd_queue_initialize: "
         "FPA is not enabled.\n");
   return CVMX_CMD_QUEUE_NO_MEMORY;
  }
  buffer = cvmx_fpa_alloc(fpa_pool);
  if (buffer == ((void*)0)) {
   cvmx_dprintf("ERROR: cvmx_cmd_queue_initialize: "
         "Unable to allocate initial buffer.\n");
   return CVMX_CMD_QUEUE_NO_MEMORY;
  }

  memset(qstate, 0, sizeof(*qstate));
  qstate->max_depth = max_depth;
  qstate->fpa_pool = fpa_pool;
  qstate->pool_size_m1 = (pool_size >> 3) - 1;
  qstate->base_ptr_div128 = cvmx_ptr_to_phys(buffer) / 128;




  __cvmx_cmd_queue_state_ptr->
      ticket[__cvmx_cmd_queue_get_index(queue_id)] = 0;
  CVMX_SYNCWS;
  return CVMX_CMD_QUEUE_SUCCESS;
 }
}
