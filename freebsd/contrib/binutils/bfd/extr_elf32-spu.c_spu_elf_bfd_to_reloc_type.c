
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum elf_spu_reloc_type { ____Placeholder_elf_spu_reloc_type } elf_spu_reloc_type ;
typedef int bfd_reloc_code_real_type ;
 int R_SPU_ADDR10 ;
 int R_SPU_ADDR10I ;
 int R_SPU_ADDR16 ;
 int R_SPU_ADDR16I ;
 int R_SPU_ADDR16_HI ;
 int R_SPU_ADDR16_LO ;
 int R_SPU_ADDR18 ;
 int R_SPU_ADDR32 ;
 int R_SPU_ADDR7 ;
 int R_SPU_NONE ;
 int R_SPU_PPU32 ;
 int R_SPU_PPU64 ;
 int R_SPU_REL16 ;
 int R_SPU_REL32 ;
 int R_SPU_REL9 ;
 int R_SPU_REL9I ;

__attribute__((used)) static enum elf_spu_reloc_type
spu_elf_bfd_to_reloc_type (bfd_reloc_code_real_type code)
{
  switch (code)
    {
    default:
      return R_SPU_NONE;
    case 139:
      return R_SPU_ADDR10;
    case 137:
      return R_SPU_ADDR16;
    case 133:
      return R_SPU_ADDR16_LO;
    case 141:
      return R_SPU_ADDR16_HI;
    case 136:
      return R_SPU_ADDR18;
    case 132:
      return R_SPU_REL16;
    case 135:
      return R_SPU_ADDR7;
    case 134:
      return R_SPU_NONE;
    case 131:
      return R_SPU_REL9;
    case 130:
      return R_SPU_REL9I;
    case 140:
      return R_SPU_ADDR10I;
    case 138:
      return R_SPU_ADDR16I;
    case 143:
      return R_SPU_ADDR32;
    case 142:
      return R_SPU_REL32;
    case 129:
      return R_SPU_PPU32;
    case 128:
      return R_SPU_PPU64;
    }
}
