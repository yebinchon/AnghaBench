
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dbg_machine; } ;
typedef int Dwarf_Unsigned ;
typedef TYPE_1__* Dwarf_Debug ;
 int R_386_32 ;
 int R_AARCH64_ABS32 ;
 int R_AARCH64_ABS64 ;
 int R_ARM_ABS32 ;
 int R_IA_64_DIR64LSB ;
 int R_IA_64_SECREL32LSB ;
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

int
_dwarf_get_reloc_size(Dwarf_Debug dbg, Dwarf_Unsigned rel_type)
{

 switch (dbg->dbg_machine) {
 case 133:
  break;
 case 138:
  if (rel_type == R_AARCH64_ABS32)
   return (4);
  else if (rel_type == R_AARCH64_ABS64)
   return (8);
  break;
 case 137:
  if (rel_type == R_ARM_ABS32)
   return (4);
  break;
 case 139:
 case 136:
  if (rel_type == R_386_32)
   return (4);
  break;
 case 128:
  if (rel_type == R_X86_64_32)
   return (4);
  else if (rel_type == R_X86_64_64)
   return (8);
  break;
 case 129:
  if (rel_type == R_SPARC_UA32)
   return (4);
  else if (rel_type == R_SPARC_UA64)
   return (8);
  break;
 case 132:
  if (rel_type == R_PPC_ADDR32)
   return (4);
  break;
 case 131:
  if (rel_type == R_PPC_ADDR32)
   return (4);
  else if (rel_type == R_PPC64_ADDR64)
   return (8);
  break;
 case 134:
  if (rel_type == R_MIPS_32)
   return (4);
  else if (rel_type == R_MIPS_64)
   return (8);
  break;
 case 130:
  if (rel_type == R_RISCV_32)
   return (4);
  else if (rel_type == R_RISCV_64)
   return (8);
  break;
 case 135:
  if (rel_type == R_IA_64_SECREL32LSB)
   return (4);
  else if (rel_type == R_IA_64_DIR64LSB)
   return (8);
  break;
 default:
  break;
 }


 return (0);
}
