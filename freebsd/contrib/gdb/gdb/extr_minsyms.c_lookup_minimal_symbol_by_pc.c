
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obj_section {int the_bfd_section; } ;
struct minimal_symbol {int dummy; } ;
typedef int CORE_ADDR ;


 struct obj_section* find_pc_section (int ) ;
 struct minimal_symbol* lookup_minimal_symbol_by_pc_section (int ,int ) ;

struct minimal_symbol *
lookup_minimal_symbol_by_pc (CORE_ADDR pc)
{



  struct obj_section *section = find_pc_section (pc);
  if (section == ((void*)0))
    return ((void*)0);
  return lookup_minimal_symbol_by_pc_section (pc, section->the_bfd_section);
}
