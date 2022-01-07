
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pevent {TYPE_1__* func_map; scalar_t__ func_count; } ;
struct TYPE_2__ {char* mod; int func; int addr; } ;


 int func_map_init (struct pevent*) ;
 int printf (char*,...) ;

void pevent_print_funcs(struct pevent *pevent)
{
 int i;

 if (!pevent->func_map)
  func_map_init(pevent);

 for (i = 0; i < (int)pevent->func_count; i++) {
  printf("%016llx %s",
         pevent->func_map[i].addr,
         pevent->func_map[i].func);
  if (pevent->func_map[i].mod)
   printf(" [%s]\n", pevent->func_map[i].mod);
  else
   printf("\n");
 }
}
