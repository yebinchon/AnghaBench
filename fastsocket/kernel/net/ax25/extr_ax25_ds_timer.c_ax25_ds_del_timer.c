
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int slave_timer; } ;
struct TYPE_5__ {TYPE_1__ dama; } ;
typedef TYPE_2__ ax25_dev ;


 int del_timer (int *) ;

void ax25_ds_del_timer(ax25_dev *ax25_dev)
{
 if (ax25_dev)
  del_timer(&ax25_dev->dama.slave_timer);
}
