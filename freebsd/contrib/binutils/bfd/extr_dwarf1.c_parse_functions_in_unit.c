
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwarf1_unit {char* first_child; } ;
struct dwarf1_func {int high_pc; int low_pc; int name; } ;
struct dwarf1_debug {char* debug_section_end; char* debug_section; int abfd; } ;
struct die_info {scalar_t__ tag; int sibling; int high_pc; int low_pc; int name; } ;
typedef int bfd_boolean ;


 int FALSE ;
 scalar_t__ TAG_entry_point ;
 scalar_t__ TAG_global_subroutine ;
 scalar_t__ TAG_inlined_subroutine ;
 scalar_t__ TAG_subroutine ;
 int TRUE ;
 struct dwarf1_func* alloc_dwarf1_func (struct dwarf1_debug*,struct dwarf1_unit*) ;
 int parse_die (int ,struct die_info*,char*,char*) ;

__attribute__((used)) static bfd_boolean
parse_functions_in_unit (struct dwarf1_debug* stash, struct dwarf1_unit* aUnit)
{
  char* eachDie;

  if (aUnit->first_child)
    for (eachDie = aUnit->first_child;
   eachDie < stash->debug_section_end;
  )
      {
 struct die_info eachDieInfo;

 if (! parse_die (stash->abfd, &eachDieInfo, eachDie,
    stash->debug_section_end))
   return FALSE;

 if (eachDieInfo.tag == TAG_global_subroutine
     || eachDieInfo.tag == TAG_subroutine
     || eachDieInfo.tag == TAG_inlined_subroutine
     || eachDieInfo.tag == TAG_entry_point)
   {
     struct dwarf1_func* aFunc = alloc_dwarf1_func (stash,aUnit);

     aFunc->name = eachDieInfo.name;
     aFunc->low_pc = eachDieInfo.low_pc;
     aFunc->high_pc = eachDieInfo.high_pc;
   }


 if (eachDieInfo.sibling)
   eachDie = stash->debug_section + eachDieInfo.sibling;
 else
   break;
      }

  return TRUE;
}
