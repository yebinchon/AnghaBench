
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mips_opcode {char* args; unsigned long mask; unsigned long match; int name; } ;


 int OP_MASK_ALN ;
 int OP_MASK_BCC ;
 int OP_MASK_BITIND ;
 int OP_MASK_BP ;
 int OP_MASK_CACHE ;
 int OP_MASK_CCC ;
 int OP_MASK_CODE ;
 int OP_MASK_CODE19 ;
 int OP_MASK_CODE2 ;
 int OP_MASK_CODE20 ;
 int OP_MASK_COPZ ;
 int OP_MASK_DELTA ;
 int OP_MASK_DSPACC ;
 int OP_MASK_DSPACC_S ;
 int OP_MASK_DSPSFT ;
 int OP_MASK_DSPSFT_7 ;
 int OP_MASK_EXTMSBD ;
 int OP_MASK_FD ;
 int OP_MASK_FR ;
 int OP_MASK_FS ;
 int OP_MASK_FT ;
 int OP_MASK_IMM10 ;
 int OP_MASK_IMM8 ;
 int OP_MASK_IMMEDIATE ;
 int OP_MASK_INSMSB ;
 int OP_MASK_MTACC_D ;
 int OP_MASK_MTACC_T ;
 int OP_MASK_MT_H ;
 int OP_MASK_MT_U ;
 int OP_MASK_PERFREG ;
 int OP_MASK_PREFX ;
 int OP_MASK_RD ;
 int OP_MASK_RDDSP ;
 int OP_MASK_RS ;
 int OP_MASK_RT ;
 int OP_MASK_SA3 ;
 int OP_MASK_SA4 ;
 int OP_MASK_SEL ;
 int OP_MASK_SHAMT ;
 int OP_MASK_TARGET ;
 int OP_MASK_UDI1 ;
 int OP_MASK_UDI2 ;
 int OP_MASK_UDI3 ;
 int OP_MASK_UDI4 ;
 int OP_MASK_VECALIGN ;
 int OP_MASK_VECBYTE ;
 int OP_MASK_VSEL ;
 int OP_MASK_WRDSP ;
 int OP_SH_ALN ;
 int OP_SH_BCC ;
 int OP_SH_BITIND ;
 int OP_SH_BP ;
 int OP_SH_CACHE ;
 int OP_SH_CCC ;
 int OP_SH_CODE ;
 int OP_SH_CODE19 ;
 int OP_SH_CODE2 ;
 int OP_SH_CODE20 ;
 int OP_SH_COPZ ;
 int OP_SH_DELTA ;
 int OP_SH_DSPACC ;
 int OP_SH_DSPACC_S ;
 int OP_SH_DSPSFT ;
 int OP_SH_DSPSFT_7 ;
 int OP_SH_EXTMSBD ;
 int OP_SH_FD ;
 int OP_SH_FR ;
 int OP_SH_FS ;
 int OP_SH_FT ;
 int OP_SH_IMM10 ;
 int OP_SH_IMM8 ;
 int OP_SH_IMMEDIATE ;
 int OP_SH_INSMSB ;
 int OP_SH_MTACC_D ;
 int OP_SH_MTACC_T ;
 int OP_SH_MT_H ;
 int OP_SH_MT_U ;
 int OP_SH_PERFREG ;
 int OP_SH_PREFX ;
 int OP_SH_RD ;
 int OP_SH_RDDSP ;
 int OP_SH_RS ;
 int OP_SH_RT ;
 int OP_SH_SA3 ;
 int OP_SH_SA4 ;
 int OP_SH_SEL ;
 int OP_SH_SHAMT ;
 int OP_SH_TARGET ;
 int OP_SH_UDI1 ;
 int OP_SH_UDI2 ;
 int OP_SH_UDI3 ;
 int OP_SH_UDI4 ;
 int OP_SH_VECALIGN ;
 int OP_SH_VECBYTE ;
 int OP_SH_VSEL ;
 int OP_SH_WRDSP ;
 int USE_BITS (int ,int ) ;
 int _ (char*) ;
 int as_bad (int ,unsigned long,char*,...) ;

__attribute__((used)) static int
validate_mips_insn (const struct mips_opcode *opc)
{
  const char *p = opc->args;
  char c;
  unsigned long used_bits = opc->mask;

  if ((used_bits & opc->match) != opc->match)
    {
      as_bad (_("internal: bad mips opcode (mask error): %s %s"),
       opc->name, opc->args);
      return 0;
    }

  while (*p)
    switch (c = *p++)
      {
      case ',': break;
      case '(': break;
      case ')': break;
      case '^': (used_bits |= ((OP_MASK_BITIND) << (OP_SH_BITIND))); break;
      case '~': (used_bits |= ((OP_MASK_BITIND) << (OP_SH_BITIND))); break;
      case '+':
     switch (c = *p++)
   {
   case '1': (used_bits |= ((OP_MASK_UDI1) << (OP_SH_UDI1))); break;
   case '2': (used_bits |= ((OP_MASK_UDI2) << (OP_SH_UDI2))); break;
   case '3': (used_bits |= ((OP_MASK_UDI3) << (OP_SH_UDI3))); break;
   case '4': (used_bits |= ((OP_MASK_UDI4) << (OP_SH_UDI4))); break;
   case 'A': (used_bits |= ((OP_MASK_SHAMT) << (OP_SH_SHAMT))); break;
   case 'B': (used_bits |= ((OP_MASK_INSMSB) << (OP_SH_INSMSB))); break;
   case 'C': (used_bits |= ((OP_MASK_EXTMSBD) << (OP_SH_EXTMSBD))); break;
   case 'D': (used_bits |= ((OP_MASK_RD) << (OP_SH_RD)));
      (used_bits |= ((OP_MASK_SEL) << (OP_SH_SEL))); break;
   case 'E': (used_bits |= ((OP_MASK_SHAMT) << (OP_SH_SHAMT))); break;
   case 'F': (used_bits |= ((OP_MASK_INSMSB) << (OP_SH_INSMSB))); break;
   case 'G': (used_bits |= ((OP_MASK_EXTMSBD) << (OP_SH_EXTMSBD))); break;
   case 'H': (used_bits |= ((OP_MASK_EXTMSBD) << (OP_SH_EXTMSBD))); break;
   case 'I': break;
   case 't': (used_bits |= ((OP_MASK_RT) << (OP_SH_RT))); break;
   case 'T': (used_bits |= ((OP_MASK_RT) << (OP_SH_RT)));
      (used_bits |= ((OP_MASK_SEL) << (OP_SH_SEL))); break;
   default:
     as_bad (_("internal: bad mips opcode (unknown extension operand type `+%c'): %s %s"),
      c, opc->name, opc->args);
     return 0;
   }
 break;
      case '<': (used_bits |= ((OP_MASK_SHAMT) << (OP_SH_SHAMT))); break;
      case '>': (used_bits |= ((OP_MASK_SHAMT) << (OP_SH_SHAMT))); break;
      case 'A': break;
      case 'B': (used_bits |= ((OP_MASK_CODE20) << (OP_SH_CODE20))); break;
      case 'C': (used_bits |= ((OP_MASK_COPZ) << (OP_SH_COPZ))); break;
      case 'D': (used_bits |= ((OP_MASK_FD) << (OP_SH_FD))); break;
      case 'E': (used_bits |= ((OP_MASK_RT) << (OP_SH_RT))); break;
      case 'F': break;
      case 'G': (used_bits |= ((OP_MASK_RD) << (OP_SH_RD))); break;
      case 'H': (used_bits |= ((OP_MASK_SEL) << (OP_SH_SEL))); break;
      case 'I': break;
      case 'J': (used_bits |= ((OP_MASK_CODE19) << (OP_SH_CODE19))); break;
      case 'K': (used_bits |= ((OP_MASK_RD) << (OP_SH_RD))); break;
      case 'L': break;
      case 'M': (used_bits |= ((OP_MASK_CCC) << (OP_SH_CCC))); break;
      case 'N': (used_bits |= ((OP_MASK_BCC) << (OP_SH_BCC))); break;
      case 'O': (used_bits |= ((OP_MASK_ALN) << (OP_SH_ALN))); break;
      case 'Q': (used_bits |= ((OP_MASK_VSEL) << (OP_SH_VSEL)));
  (used_bits |= ((OP_MASK_FT) << (OP_SH_FT))); break;
      case 'R': (used_bits |= ((OP_MASK_FR) << (OP_SH_FR))); break;
      case 'S': (used_bits |= ((OP_MASK_FS) << (OP_SH_FS))); break;
      case 'T': (used_bits |= ((OP_MASK_FT) << (OP_SH_FT))); break;
      case 'V': (used_bits |= ((OP_MASK_FS) << (OP_SH_FS))); break;
      case 'W': (used_bits |= ((OP_MASK_FT) << (OP_SH_FT))); break;
      case 'X': (used_bits |= ((OP_MASK_FD) << (OP_SH_FD))); break;
      case 'Y': (used_bits |= ((OP_MASK_FS) << (OP_SH_FS))); break;
      case 'Z': (used_bits |= ((OP_MASK_FT) << (OP_SH_FT))); break;
      case 'a': (used_bits |= ((OP_MASK_TARGET) << (OP_SH_TARGET))); break;
      case 'b': (used_bits |= ((OP_MASK_RS) << (OP_SH_RS))); break;
      case 'c': (used_bits |= ((OP_MASK_CODE) << (OP_SH_CODE))); break;
      case 'd': (used_bits |= ((OP_MASK_RD) << (OP_SH_RD))); break;
      case 'f': break;
      case 'h': (used_bits |= ((OP_MASK_PREFX) << (OP_SH_PREFX))); break;
      case 'i': (used_bits |= ((OP_MASK_IMMEDIATE) << (OP_SH_IMMEDIATE))); break;
      case 'j': (used_bits |= ((OP_MASK_DELTA) << (OP_SH_DELTA))); break;
      case 'k': (used_bits |= ((OP_MASK_CACHE) << (OP_SH_CACHE))); break;
      case 'l': break;
      case 'o': (used_bits |= ((OP_MASK_DELTA) << (OP_SH_DELTA))); break;
      case 'p': (used_bits |= ((OP_MASK_DELTA) << (OP_SH_DELTA))); break;
      case 'q': (used_bits |= ((OP_MASK_CODE2) << (OP_SH_CODE2))); break;
      case 'r': (used_bits |= ((OP_MASK_RS) << (OP_SH_RS))); break;
      case 's': (used_bits |= ((OP_MASK_RS) << (OP_SH_RS))); break;
      case 't': (used_bits |= ((OP_MASK_RT) << (OP_SH_RT))); break;
      case 'u': (used_bits |= ((OP_MASK_IMMEDIATE) << (OP_SH_IMMEDIATE))); break;
      case 'v': (used_bits |= ((OP_MASK_RS) << (OP_SH_RS))); break;
      case 'w': (used_bits |= ((OP_MASK_RT) << (OP_SH_RT))); break;
      case 'x': break;
      case 'y': (used_bits |= ((OP_MASK_CODE2) << (OP_SH_CODE2))); break;
      case 'z': break;
      case 'P': (used_bits |= ((OP_MASK_PERFREG) << (OP_SH_PERFREG))); break;
      case 'U': (used_bits |= ((OP_MASK_RD) << (OP_SH_RD)));
         (used_bits |= ((OP_MASK_RT) << (OP_SH_RT))); break;
      case 'e': (used_bits |= ((OP_MASK_VECBYTE) << (OP_SH_VECBYTE))); break;
      case '%': (used_bits |= ((OP_MASK_VECALIGN) << (OP_SH_VECALIGN))); break;
      case '[': break;
      case ']': break;
      case '2': (used_bits |= ((OP_MASK_BP) << (OP_SH_BP))); break;
      case '3': (used_bits |= ((OP_MASK_SA3) << (OP_SH_SA3))); break;
      case '4': (used_bits |= ((OP_MASK_SA4) << (OP_SH_SA4))); break;
      case '5': (used_bits |= ((OP_MASK_IMM8) << (OP_SH_IMM8))); break;
      case '6': (used_bits |= ((OP_MASK_RS) << (OP_SH_RS))); break;
      case '7': (used_bits |= ((OP_MASK_DSPACC) << (OP_SH_DSPACC))); break;
      case '8': (used_bits |= ((OP_MASK_WRDSP) << (OP_SH_WRDSP))); break;
      case '9': (used_bits |= ((OP_MASK_DSPACC_S) << (OP_SH_DSPACC_S)));break;
      case '0': (used_bits |= ((OP_MASK_DSPSFT) << (OP_SH_DSPSFT))); break;
      case '\'': (used_bits |= ((OP_MASK_RDDSP) << (OP_SH_RDDSP))); break;
      case ':': (used_bits |= ((OP_MASK_DSPSFT_7) << (OP_SH_DSPSFT_7)));break;
      case '@': (used_bits |= ((OP_MASK_IMM10) << (OP_SH_IMM10))); break;
      case '!': (used_bits |= ((OP_MASK_MT_U) << (OP_SH_MT_U))); break;
      case '$': (used_bits |= ((OP_MASK_MT_H) << (OP_SH_MT_H))); break;
      case '*': (used_bits |= ((OP_MASK_MTACC_T) << (OP_SH_MTACC_T))); break;
      case '&': (used_bits |= ((OP_MASK_MTACC_D) << (OP_SH_MTACC_D))); break;
      case 'g': (used_bits |= ((OP_MASK_RD) << (OP_SH_RD))); break;
      default:
 as_bad (_("internal: bad mips opcode (unknown operand type `%c'): %s %s"),
  c, opc->name, opc->args);
 return 0;
      }

  if (used_bits != 0xffffffff)
    {
      as_bad (_("internal: bad mips opcode (bits 0x%lx undefined): %s %s"),
       ~used_bits & 0xffffffff, opc->name, opc->args);
      return 0;
    }
  return 1;
}
