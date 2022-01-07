
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct obj_section {TYPE_1__* the_bfd_section; } ;
struct TYPE_2__ {int * name; } ;
typedef int CORE_ADDR ;


 struct obj_section* find_pc_section (int ) ;
 scalar_t__ strcmp (int *,char*) ;

int
in_plt_section (CORE_ADDR pc, char *name)
{
  struct obj_section *s;
  int retval = 0;

  s = find_pc_section (pc);

  retval = (s != ((void*)0)
     && s->the_bfd_section->name != ((void*)0)
     && strcmp (s->the_bfd_section->name, ".plt") == 0);
  return (retval);
}
