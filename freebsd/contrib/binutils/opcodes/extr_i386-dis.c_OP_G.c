
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int reg; } ;


 int DFLAG ;
 int INTERNAL_DISASSEMBLER_ERROR ;
 int PREFIX_DATA ;
 int REX_R ;
 int REX_W ;
 int USED_REX (int) ;
 int address_mode ;







 int mode_64bit ;
 TYPE_1__ modrm ;
 int * names16 ;
 int * names32 ;
 int * names64 ;
 int * names8 ;
 int * names8rex ;
 int oappend (int ) ;
 int prefixes ;

 int rex ;
 int used_prefixes ;



__attribute__((used)) static void
OP_G (int bytemode, int sizeflag)
{
  int add = 0;
  USED_REX (REX_R);
  if (rex & REX_R)
    add += 8;
  switch (bytemode)
    {
    case 137:
      USED_REX (0);
      if (rex)
 oappend (names8rex[modrm.reg + add]);
      else
 oappend (names8[modrm.reg + add]);
      break;
    case 128:
      oappend (names16[modrm.reg + add]);
      break;
    case 136:
      oappend (names32[modrm.reg + add]);
      break;
    case 130:
      oappend (names64[modrm.reg + add]);
      break;
    case 129:
    case 135:
    case 134:
    case 133:
    case 132:
      USED_REX (REX_W);
      if (rex & REX_W)
 oappend (names64[modrm.reg + add]);
      else if ((sizeflag & DFLAG) || bytemode != 129)
 oappend (names32[modrm.reg + add]);
      else
 oappend (names16[modrm.reg + add]);
      used_prefixes |= (prefixes & PREFIX_DATA);
      break;
    case 131:
      if (address_mode == mode_64bit)
 oappend (names64[modrm.reg + add]);
      else
 oappend (names32[modrm.reg + add]);
      break;
    default:
      oappend (INTERNAL_DISASSEMBLER_ERROR);
      break;
    }
}
