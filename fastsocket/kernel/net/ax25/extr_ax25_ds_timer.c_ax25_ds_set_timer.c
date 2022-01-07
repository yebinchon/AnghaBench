
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int slave_timeout; int slave_timer; } ;
struct TYPE_5__ {TYPE_1__ dama; int * values; } ;
typedef TYPE_2__ ax25_dev ;


 size_t AX25_VALUES_DS_TIMEOUT ;
 scalar_t__ HZ ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int msecs_to_jiffies (int ) ;

void ax25_ds_set_timer(ax25_dev *ax25_dev)
{
 if (ax25_dev == ((void*)0))
  return;

 ax25_dev->dama.slave_timeout =
  msecs_to_jiffies(ax25_dev->values[AX25_VALUES_DS_TIMEOUT]) / 10;
 mod_timer(&ax25_dev->dama.slave_timer, jiffies + HZ);
}
