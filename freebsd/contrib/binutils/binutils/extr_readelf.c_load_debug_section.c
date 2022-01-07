
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct dwarf_section {char* name; int * start; int size; int address; } ;
typedef enum dwarf_section_display_enum { ____Placeholder_dwarf_section_display_enum } dwarf_section_display_enum ;
typedef int buf ;
struct TYPE_6__ {scalar_t__ relocate; struct dwarf_section section; } ;
struct TYPE_5__ {int sh_size; int sh_offset; int sh_addr; } ;
typedef TYPE_1__ Elf_Internal_Shdr ;


 char* _ (char*) ;
 int debug_apply_rela_addends (void*,TYPE_1__*,int *) ;
 TYPE_3__* debug_displays ;
 TYPE_1__* find_section (char*) ;
 int * get_data (int *,void*,int ,int,int ,char*) ;
 int snprintf (char*,int,char*,char*) ;

int
load_debug_section (enum dwarf_section_display_enum debug, void *file)
{
  struct dwarf_section *section = &debug_displays [debug].section;
  Elf_Internal_Shdr *sec;
  char buf [64];


  if (section->start != ((void*)0))
    return 1;


  sec = find_section (section->name);
  if (sec == ((void*)0))
    return 0;

  snprintf (buf, sizeof (buf), _("%s section data"), section->name);
  section->address = sec->sh_addr;
  section->size = sec->sh_size;
  section->start = get_data (((void*)0), file, sec->sh_offset, 1,
        sec->sh_size, buf);

  if (debug_displays [debug].relocate)
    debug_apply_rela_addends (file, sec, section->start);

  return section->start != ((void*)0);
}
