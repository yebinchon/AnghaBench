
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int st_shndx; int st_size; } ;
struct TYPE_9__ {TYPE_1__ internal_elf_sym; } ;
typedef TYPE_2__ elf_symbol_type ;
typedef int bfd ;
struct TYPE_10__ {int value; TYPE_6__* section; } ;
typedef TYPE_3__ asymbol ;
struct TYPE_12__ {char* name; TYPE_4__** symbol_ptr_ptr; TYPE_4__* symbol; struct TYPE_12__* output_section; int flags; } ;
struct TYPE_11__ {char* name; TYPE_6__* section; int flags; } ;


 int BSF_SECTION_SYM ;
 int SEC_IS_COMMON ;


 int elf_gp_size (int *) ;
 TYPE_6__ score_elf_scom_section ;
 TYPE_4__ score_elf_scom_symbol ;
 TYPE_4__* score_elf_scom_symbol_ptr ;

__attribute__((used)) static void
_bfd_score_elf_symbol_processing (bfd *abfd, asymbol *asym)
{
  elf_symbol_type *elfsym;

  elfsym = (elf_symbol_type *) asym;
  switch (elfsym->internal_elf_sym.st_shndx)
    {
    case 129:
      if (asym->value > elf_gp_size (abfd))
        break;

    case 128:
      if (score_elf_scom_section.name == ((void*)0))
        {

          score_elf_scom_section.name = ".scommon";
          score_elf_scom_section.flags = SEC_IS_COMMON;
          score_elf_scom_section.output_section = &score_elf_scom_section;
          score_elf_scom_section.symbol = &score_elf_scom_symbol;
          score_elf_scom_section.symbol_ptr_ptr = &score_elf_scom_symbol_ptr;
          score_elf_scom_symbol.name = ".scommon";
          score_elf_scom_symbol.flags = BSF_SECTION_SYM;
          score_elf_scom_symbol.section = &score_elf_scom_section;
          score_elf_scom_symbol_ptr = &score_elf_scom_symbol;
        }
      asym->section = &score_elf_scom_section;
      asym->value = elfsym->internal_elf_sym.st_size;
      break;
    }
}
