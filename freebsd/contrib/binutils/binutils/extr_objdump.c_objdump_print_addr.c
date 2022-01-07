
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct objdump_disasm_info {int sec; int abfd; TYPE_1__* reloc; } ;
struct disassemble_info {scalar_t__ application_data; int stream; int (* fprintf_func ) (int ,char*) ;} ;
typedef int bfd_vma ;
typedef int bfd_boolean ;
typedef int asymbol ;
struct TYPE_2__ {int ** sym_ptr_ptr; } ;


 int FALSE ;
 int TRUE ;
 scalar_t__ bfd_asymbol_value (int *) ;
 int bfd_get_section (int *) ;
 scalar_t__ bfd_is_und_section (int ) ;
 int * find_symbol_for_address (int ,struct disassemble_info*,int *) ;
 int objdump_print_addr_with_sym (int ,int ,int *,int ,struct disassemble_info*,int ) ;
 int objdump_print_value (int ,struct disassemble_info*,int ) ;
 int sorted_symcount ;
 int stub1 (int ,char*) ;

__attribute__((used)) static void
objdump_print_addr (bfd_vma vma,
      struct disassemble_info *info,
      bfd_boolean skip_zeroes)
{
  struct objdump_disasm_info *aux;
  asymbol *sym = ((void*)0);
  bfd_boolean skip_find = FALSE;

  if (sorted_symcount < 1)
    {
      (*info->fprintf_func) (info->stream, "0x");
      objdump_print_value (vma, info, skip_zeroes);
      return;
    }

  aux = (struct objdump_disasm_info *) info->application_data;

  if (aux->reloc != ((void*)0)
      && aux->reloc->sym_ptr_ptr != ((void*)0)
      && * aux->reloc->sym_ptr_ptr != ((void*)0))
    {
      sym = * aux->reloc->sym_ptr_ptr;


      vma += bfd_asymbol_value (sym);

      if (bfd_is_und_section (bfd_get_section (sym)))
 skip_find = TRUE;
    }

  if (!skip_find)
    sym = find_symbol_for_address (vma, info, ((void*)0));

  objdump_print_addr_with_sym (aux->abfd, aux->sec, sym, vma, info,
          skip_zeroes);
}
