
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pevent {TYPE_1__* printk_map; scalar_t__ printk_count; } ;
struct TYPE_2__ {int printk; int addr; } ;


 int printf (char*,int ,int ) ;
 int printk_map_init (struct pevent*) ;

void pevent_print_printk(struct pevent *pevent)
{
 int i;

 if (!pevent->printk_map)
  printk_map_init(pevent);

 for (i = 0; i < (int)pevent->printk_count; i++) {
  printf("%016llx %s\n",
         pevent->printk_map[i].addr,
         pevent->printk_map[i].printk);
 }
}
