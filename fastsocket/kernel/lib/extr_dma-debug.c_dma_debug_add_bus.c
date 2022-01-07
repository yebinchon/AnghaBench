
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int notifier_call; } ;
struct bus_type {int dummy; } ;


 int GFP_KERNEL ;
 int bus_register_notifier (struct bus_type*,struct notifier_block*) ;
 int dma_debug_device_change ;
 scalar_t__ global_disable ;
 struct notifier_block* kzalloc (int,int ) ;
 int pr_err (char*) ;

void dma_debug_add_bus(struct bus_type *bus)
{
 struct notifier_block *nb;

 if (global_disable)
  return;

 nb = kzalloc(sizeof(struct notifier_block), GFP_KERNEL);
 if (nb == ((void*)0)) {
  pr_err("dma_debug_add_bus: out of memory\n");
  return;
 }

 nb->notifier_call = dma_debug_device_change;

 bus_register_notifier(bus, nb);
}
