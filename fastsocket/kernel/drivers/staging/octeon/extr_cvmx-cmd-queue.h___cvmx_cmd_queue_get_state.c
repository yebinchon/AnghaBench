
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int cvmx_cmd_queue_id_t ;
typedef int __cvmx_cmd_queue_state_t ;
struct TYPE_2__ {int * state; } ;
typedef TYPE_1__ __cvmx_cmd_queue_all_state_t ;


 size_t __cvmx_cmd_queue_get_index (int ) ;

__attribute__((used)) static inline __cvmx_cmd_queue_state_t
    *__cvmx_cmd_queue_get_state(cvmx_cmd_queue_id_t queue_id)
{
 extern __cvmx_cmd_queue_all_state_t
     *__cvmx_cmd_queue_state_ptr;
 return &__cvmx_cmd_queue_state_ptr->
     state[__cvmx_cmd_queue_get_index(queue_id)];
}
