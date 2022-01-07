
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lapb_cb {int t1timer; } ;


 int timer_pending (int *) ;

int lapb_t1timer_running(struct lapb_cb *lapb)
{
 return timer_pending(&lapb->t1timer);
}
