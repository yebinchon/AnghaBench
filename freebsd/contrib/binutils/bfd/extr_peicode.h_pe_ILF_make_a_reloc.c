
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int abfd; } ;
typedef TYPE_1__ pe_ILF_vars ;
typedef int bfd_vma ;
typedef int bfd_reloc_code_real_type ;
typedef TYPE_2__* asection_ptr ;
struct TYPE_10__ {int i; } ;
struct TYPE_9__ {int symbol_ptr_ptr; } ;


 TYPE_6__* coff_section_data (int ,TYPE_2__*) ;
 int pe_ILF_make_a_symbol_reloc (TYPE_1__*,int ,int ,int ,int ) ;

__attribute__((used)) static void
pe_ILF_make_a_reloc (pe_ILF_vars * vars,
       bfd_vma address,
       bfd_reloc_code_real_type reloc,
       asection_ptr sec)
{
  pe_ILF_make_a_symbol_reloc (vars, address, reloc, sec->symbol_ptr_ptr,
         coff_section_data (vars->abfd, sec)->i);
}
