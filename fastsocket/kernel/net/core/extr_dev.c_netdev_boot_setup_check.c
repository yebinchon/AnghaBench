
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mem_end; int mem_start; int base_addr; int irq; } ;
struct netdev_boot_setup {char* name; TYPE_1__ map; } ;
struct net_device {int mem_end; int mem_start; int base_addr; int irq; int name; } ;


 int NETDEV_BOOT_SETUP_MAX ;
 struct netdev_boot_setup* dev_boot_setup ;
 int strcmp (int ,char*) ;

int netdev_boot_setup_check(struct net_device *dev)
{
 struct netdev_boot_setup *s = dev_boot_setup;
 int i;

 for (i = 0; i < NETDEV_BOOT_SETUP_MAX; i++) {
  if (s[i].name[0] != '\0' && s[i].name[0] != ' ' &&
      !strcmp(dev->name, s[i].name)) {
   dev->irq = s[i].map.irq;
   dev->base_addr = s[i].map.base_addr;
   dev->mem_start = s[i].map.mem_start;
   dev->mem_end = s[i].map.mem_end;
   return 1;
  }
 }
 return 0;
}
