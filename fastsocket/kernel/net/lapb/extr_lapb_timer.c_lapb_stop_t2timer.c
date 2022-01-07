
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lapb_cb {int t2timer; } ;


 int del_timer (int *) ;

void lapb_stop_t2timer(struct lapb_cb *lapb)
{
 del_timer(&lapb->t2timer);
}
