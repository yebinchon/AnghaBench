
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {int st_shndx; int st_size; int st_info; } ;
struct TYPE_15__ {TYPE_1__ internal_elf_sym; } ;
typedef TYPE_2__ elf_symbol_type ;
typedef int bfd ;
struct TYPE_16__ {int value; TYPE_4__* section; } ;
typedef TYPE_3__ asymbol ;
struct TYPE_17__ {char* name; int vma; TYPE_5__** symbol_ptr_ptr; TYPE_5__* symbol; struct TYPE_17__* output_section; int flags; } ;
typedef TYPE_4__ asection ;
struct TYPE_18__ {char* name; TYPE_4__* section; void* flags; } ;


 int BFD_ASSERT (int ) ;
 void* BSF_SECTION_SYM ;
 int ELF_ST_TYPE (int ) ;
 int IRIX_COMPAT (int *) ;
 int SEC_ALLOC ;
 int SEC_IS_COMMON ;
 int SGI_COMPAT (int *) ;






 int STT_TLS ;
 TYPE_4__* bfd_get_section_by_name (int *,char*) ;
 TYPE_4__* bfd_und_section_ptr ;
 int elf_gp_size (int *) ;
 int ict_irix6 ;
 TYPE_4__ mips_elf_acom_section ;
 TYPE_5__ mips_elf_acom_symbol ;
 TYPE_5__* mips_elf_acom_symbol_ptr ;
 TYPE_4__ mips_elf_scom_section ;
 TYPE_5__ mips_elf_scom_symbol ;
 TYPE_5__* mips_elf_scom_symbol_ptr ;

void
_bfd_mips_elf_symbol_processing (bfd *abfd, asymbol *asym)
{
  elf_symbol_type *elfsym;

  elfsym = (elf_symbol_type *) asym;
  switch (elfsym->internal_elf_sym.st_shndx)
    {
    case 132:





      if (mips_elf_acom_section.name == ((void*)0))
 {

   mips_elf_acom_section.name = ".acommon";
   mips_elf_acom_section.flags = SEC_ALLOC;
   mips_elf_acom_section.output_section = &mips_elf_acom_section;
   mips_elf_acom_section.symbol = &mips_elf_acom_symbol;
   mips_elf_acom_section.symbol_ptr_ptr = &mips_elf_acom_symbol_ptr;
   mips_elf_acom_symbol.name = ".acommon";
   mips_elf_acom_symbol.flags = BSF_SECTION_SYM;
   mips_elf_acom_symbol.section = &mips_elf_acom_section;
   mips_elf_acom_symbol_ptr = &mips_elf_acom_symbol;
 }
      asym->section = &mips_elf_acom_section;
      break;

    case 133:


      if (asym->value > elf_gp_size (abfd)
   || ELF_ST_TYPE (elfsym->internal_elf_sym.st_info) == STT_TLS
   || IRIX_COMPAT (abfd) == ict_irix6)
 break;

    case 130:
      if (mips_elf_scom_section.name == ((void*)0))
 {

   mips_elf_scom_section.name = ".scommon";
   mips_elf_scom_section.flags = SEC_IS_COMMON;
   mips_elf_scom_section.output_section = &mips_elf_scom_section;
   mips_elf_scom_section.symbol = &mips_elf_scom_symbol;
   mips_elf_scom_section.symbol_ptr_ptr = &mips_elf_scom_symbol_ptr;
   mips_elf_scom_symbol.name = ".scommon";
   mips_elf_scom_symbol.flags = BSF_SECTION_SYM;
   mips_elf_scom_symbol.section = &mips_elf_scom_section;
   mips_elf_scom_symbol_ptr = &mips_elf_scom_symbol;
 }
      asym->section = &mips_elf_scom_section;
      asym->value = elfsym->internal_elf_sym.st_size;
      break;

    case 129:
      asym->section = bfd_und_section_ptr;
      break;

    case 128:
      {
 asection *section = bfd_get_section_by_name (abfd, ".text");

 BFD_ASSERT (SGI_COMPAT (abfd));
 if (section != ((void*)0))
   {
     asym->section = section;



     asym->value -= section->vma;
   }
      }
      break;

    case 131:
      {
 asection *section = bfd_get_section_by_name (abfd, ".data");

 BFD_ASSERT (SGI_COMPAT (abfd));
 if (section != ((void*)0))
   {
     asym->section = section;



     asym->value -= section->vma;
   }
      }
      break;
    }
}
