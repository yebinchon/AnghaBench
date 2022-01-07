
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct disassemble_info {int dummy; } ;
typedef scalar_t__ bfd_vma ;
typedef int asymbol ;


 scalar_t__ bfd_asymbol_value (int *) ;
 int * find_symbol_for_address (scalar_t__,struct disassemble_info*,int *) ;

__attribute__((used)) static int
objdump_symbol_at_address (bfd_vma vma, struct disassemble_info * info)
{
  asymbol * sym;

  sym = find_symbol_for_address (vma, info, ((void*)0));

  return (sym != ((void*)0) && (bfd_asymbol_value (sym) == vma));
}
