
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int now_serving; } ;
typedef TYPE_1__ __cvmx_cmd_queue_state_t ;


 int CVMX_SYNCWS ;

__attribute__((used)) static inline void __cvmx_cmd_queue_unlock(__cvmx_cmd_queue_state_t *qptr)
{
 qptr->now_serving++;
 CVMX_SYNCWS;
}
