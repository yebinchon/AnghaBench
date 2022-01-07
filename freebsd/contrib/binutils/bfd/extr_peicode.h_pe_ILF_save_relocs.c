
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ string_table; scalar_t__ int_reltab; scalar_t__ relcount; int reltab; int abfd; } ;
typedef TYPE_1__ pe_ILF_vars ;
typedef int bfd_byte ;
typedef TYPE_2__* asection_ptr ;
struct TYPE_9__ {int keep_relocs; scalar_t__ relocs; } ;
struct TYPE_8__ {int flags; scalar_t__ reloc_count; int relocation; } ;


 int BFD_ASSERT (int) ;
 int SEC_RELOC ;
 int TRUE ;
 int abort () ;
 TYPE_5__* coff_section_data (int ,TYPE_2__*) ;

__attribute__((used)) static void
pe_ILF_save_relocs (pe_ILF_vars * vars,
      asection_ptr sec)
{

  if (coff_section_data (vars->abfd, sec) == ((void*)0))

    abort ();

  coff_section_data (vars->abfd, sec)->relocs = vars->int_reltab;
  coff_section_data (vars->abfd, sec)->keep_relocs = TRUE;

  sec->relocation = vars->reltab;
  sec->reloc_count = vars->relcount;
  sec->flags |= SEC_RELOC;

  vars->reltab += vars->relcount;
  vars->int_reltab += vars->relcount;
  vars->relcount = 0;

  BFD_ASSERT ((bfd_byte *) vars->int_reltab < (bfd_byte *) vars->string_table);
}
