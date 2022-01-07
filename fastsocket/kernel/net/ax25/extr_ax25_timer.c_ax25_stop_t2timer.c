
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int t2timer; } ;
typedef TYPE_1__ ax25_cb ;


 int del_timer (int *) ;

void ax25_stop_t2timer(ax25_cb *ax25)
{
 del_timer(&ax25->t2timer);
}
