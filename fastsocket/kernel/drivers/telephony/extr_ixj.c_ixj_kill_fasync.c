
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__* ixj_signals; int async_queue; } ;
typedef size_t IXJ_SIGEVENT ;
typedef TYPE_1__ IXJ ;


 int ixjdebug ;
 int kill_fasync (int *,scalar_t__,int) ;
 int printk (char*,size_t) ;

__attribute__((used)) static inline void ixj_kill_fasync(IXJ *j, IXJ_SIGEVENT event, int dir)
{
 if(j->ixj_signals[event]) {
  if(ixjdebug & 0x0100)
   printk("Sending signal for event %d\n", event);


  kill_fasync(&(j->async_queue), j->ixj_signals[event], dir);
 }
}
