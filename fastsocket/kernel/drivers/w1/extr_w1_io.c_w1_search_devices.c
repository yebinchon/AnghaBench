
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int w1_slave_found_callback ;
typedef int u8 ;
struct w1_master {TYPE_1__* bus_master; int attempts; } ;
struct TYPE_2__ {int data; int (* search ) (int ,struct w1_master*,int ,int ) ;} ;


 int stub1 (int ,struct w1_master*,int ,int ) ;
 int w1_search (struct w1_master*,int ,int ) ;

void w1_search_devices(struct w1_master *dev, u8 search_type, w1_slave_found_callback cb)
{
 dev->attempts++;
 if (dev->bus_master->search)
  dev->bus_master->search(dev->bus_master->data, dev,
   search_type, cb);
 else
  w1_search(dev, search_type, cb);
}
