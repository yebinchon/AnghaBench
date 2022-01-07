
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int bfd ;
struct TYPE_7__ {int addend; TYPE_1__** sym_ptr_ptr; int howto; } ;
typedef TYPE_2__ arelent ;
struct TYPE_8__ {int r_info; } ;
struct TYPE_6__ {int flags; } ;
typedef TYPE_3__ Elf_Internal_Rela ;


 int BSF_SECTION_SYM ;
 unsigned int ELF32_R_TYPE (int ) ;
 int FALSE ;
 scalar_t__ R_MIPS_GPREL16 ;
 scalar_t__ R_MIPS_LITERAL ;
 int elf_gp (int *) ;
 int mips_elf_n32_rtype_to_howto (unsigned int,int ) ;

__attribute__((used)) static void
mips_info_to_howto_rel (bfd *abfd, arelent *cache_ptr, Elf_Internal_Rela *dst)
{
  unsigned int r_type;

  r_type = ELF32_R_TYPE (dst->r_info);
  cache_ptr->howto = mips_elf_n32_rtype_to_howto (r_type, FALSE);





  if (((*cache_ptr->sym_ptr_ptr)->flags & BSF_SECTION_SYM) != 0
      && (r_type == (unsigned int) R_MIPS_GPREL16
   || r_type == (unsigned int) R_MIPS_LITERAL))
    cache_ptr->addend = elf_gp (abfd);
}
