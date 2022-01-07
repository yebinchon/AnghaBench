
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct spu_link_hash_table {scalar_t__ num_overlays; int non_overlay_stubs; } ;
typedef int bfd_boolean ;
struct TYPE_5__ {int * output_section; } ;
typedef TYPE_1__ asection ;
struct TYPE_6__ {scalar_t__ ovl_index; } ;


 int FALSE ;
 int TRUE ;
 TYPE_2__* spu_elf_section_data (int *) ;
 scalar_t__ strncmp (char const*,char*,int) ;

__attribute__((used)) static bfd_boolean
needs_ovl_stub (const char *sym_name,
  asection *sym_sec,
  asection *input_section,
  struct spu_link_hash_table *htab,
  bfd_boolean is_branch)
{
  if (htab->num_overlays == 0)
    return FALSE;

  if (sym_sec == ((void*)0)
      || sym_sec->output_section == ((void*)0)
      || spu_elf_section_data (sym_sec->output_section) == ((void*)0))
    return FALSE;




  if (strncmp (sym_name, "setjmp", 6) == 0
      && (sym_name[6] == '\0' || sym_name[6] == '@'))
    return TRUE;


  if (spu_elf_section_data (sym_sec->output_section)->ovl_index == 0
      && !htab->non_overlay_stubs)
    return FALSE;



  if (spu_elf_section_data (sym_sec->output_section)->ovl_index
       != spu_elf_section_data (input_section->output_section)->ovl_index)
    return TRUE;



  return !is_branch;
}
