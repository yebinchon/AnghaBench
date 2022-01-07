
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int task; } ;
struct uwb_rc {TYPE_1__ uwbd; } ;


 int kthread_stop (int ) ;
 int uwbd_flush (struct uwb_rc*) ;

void uwbd_stop(struct uwb_rc *rc)
{
 kthread_stop(rc->uwbd.task);
 uwbd_flush(rc);
}
