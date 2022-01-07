
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef int cvmx_cmd_queue_id_t ;
struct TYPE_3__ {scalar_t__ base_ptr_div128; } ;
typedef TYPE_1__ __cvmx_cmd_queue_state_t ;


 TYPE_1__* __cvmx_cmd_queue_get_state (int ) ;
 void* cvmx_phys_to_ptr (int) ;

void *cvmx_cmd_queue_buffer(cvmx_cmd_queue_id_t queue_id)
{
 __cvmx_cmd_queue_state_t *qptr = __cvmx_cmd_queue_get_state(queue_id);
 if (qptr && qptr->base_ptr_div128)
  return cvmx_phys_to_ptr((uint64_t) qptr->base_ptr_div128 << 7);
 else
  return ((void*)0);
}
