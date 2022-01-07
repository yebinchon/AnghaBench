
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dbgp_isa; } ;
typedef int Dwarf_Unsigned ;
typedef TYPE_1__* Dwarf_P_Debug ;
 int R_386_32 ;
 int R_AARCH64_ABS32 ;
 int R_AARCH64_ABS64 ;
 int R_ARM_ABS32 ;
 int R_IA_64_DIR32LSB ;
 int R_IA_64_DIR64LSB ;
 int R_MIPS_32 ;
 int R_MIPS_64 ;
 int R_PPC64_ADDR64 ;
 int R_PPC_ADDR32 ;
 int R_RISCV_32 ;
 int R_RISCV_64 ;
 int R_SPARC_UA32 ;
 int R_SPARC_UA64 ;
 int R_X86_64_32 ;
 int R_X86_64_64 ;
 int assert (int ) ;

Dwarf_Unsigned
_dwarf_get_reloc_type(Dwarf_P_Debug dbg, int is64)
{

 assert(dbg != ((void*)0));

 switch (dbg->dbgp_isa) {
 case 136:
  return (is64 ? R_AARCH64_ABS64 : R_AARCH64_ABS32);
 case 129:
  return (R_386_32);
 case 128:
  return (is64 ? R_X86_64_64 : R_X86_64_32);
 case 130:
  return (is64 ? R_SPARC_UA64 : R_SPARC_UA32);
 case 132:
  return (is64 ? R_PPC64_ADDR64 : R_PPC_ADDR32);
 case 135:
  return (R_ARM_ABS32);
 case 133:
  return (is64 ? R_MIPS_64 : R_MIPS_32);
 case 131:
  return (is64 ? R_RISCV_64 : R_RISCV_32);
 case 134:
  return (is64 ? R_IA_64_DIR64LSB : R_IA_64_DIR32LSB);
 default:
  break;
 }
 return (0);
}
