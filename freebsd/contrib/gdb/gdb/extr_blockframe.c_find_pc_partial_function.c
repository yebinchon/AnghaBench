
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obj_section {struct bfd_section* the_bfd_section; } ;
struct bfd_section {int dummy; } ;
typedef int CORE_ADDR ;


 struct bfd_section* find_pc_overlay (int ) ;
 int find_pc_sect_partial_function (int ,struct bfd_section*,char**,int *,int *) ;
 struct obj_section* find_pc_section (int ) ;

int
find_pc_partial_function (CORE_ADDR pc, char **name, CORE_ADDR *address,
     CORE_ADDR *endaddr)
{
  struct bfd_section *bfd_section;






  bfd_section = find_pc_overlay (pc);
  if (bfd_section == ((void*)0))
    {
      struct obj_section *obj_section = find_pc_section (pc);
      if (obj_section == ((void*)0))
 bfd_section = ((void*)0);
      else
 bfd_section = obj_section->the_bfd_section;
    }
  return find_pc_sect_partial_function (pc, bfd_section, name, address,
     endaddr);
}
