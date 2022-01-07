
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int reloc_count; } ;
typedef TYPE_1__ asection ;
struct TYPE_6__ {int r_info; } ;
typedef TYPE_2__ Elf_Internal_Rela ;


 int ELF32_R_TYPE (int ) ;
 int R_SPU_PPU32 ;
 int R_SPU_PPU64 ;

__attribute__((used)) static unsigned int
spu_elf_count_relocs (asection *sec, Elf_Internal_Rela *relocs)
{
  unsigned int count = 0;
  Elf_Internal_Rela *relend = relocs + sec->reloc_count;

  for (; relocs < relend; relocs++)
    {
      int r_type = ELF32_R_TYPE (relocs->r_info);
      if (r_type == R_SPU_PPU32 || r_type == R_SPU_PPU64)
 ++count;
    }

  return count;
}
