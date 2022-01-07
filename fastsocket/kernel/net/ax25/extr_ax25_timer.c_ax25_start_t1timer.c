
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ t1; int t1timer; } ;
typedef TYPE_1__ ax25_cb ;


 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;

void ax25_start_t1timer(ax25_cb *ax25)
{
 mod_timer(&ax25->t1timer, jiffies + ax25->t1);
}
