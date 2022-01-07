
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DFLAG ;
 char* INTERNAL_DISASSEMBLER_ERROR ;
 int PREFIX_DATA ;
 int REX_B ;
 int REX_W ;
 int USED_REX (int) ;
 int address_mode ;
 int mode_64bit ;
 char** names16 ;
 char** names32 ;
 char** names64 ;
 char** names8 ;
 char** names8rex ;
 char** names_seg ;
 int oappend (char const*) ;
 int prefixes ;
 int rex ;



 int used_prefixes ;

__attribute__((used)) static void
OP_REG (int code, int sizeflag)
{
  const char *s;
  int add = 0;
  USED_REX (REX_B);
  if (rex & REX_B)
    add = 8;

  switch (code)
    {
    case 163: case 155: case 150: case 159:
    case 129: case 160: case 130: case 153:
      s = names16[code - 163 + add];
      break;
    case 141: case 128: case 156:
    case 151: case 140: case 139:
      s = names_seg[code - 141 + add];
      break;
    case 164: case 165: case 157: case 158:
    case 152: case 154: case 161: case 162:
      USED_REX (0);
      if (rex)
 s = names8rex[code - 164 + add];
      else
 s = names8[code - 164];
      break;
    case 138: case 135: case 133: case 136:
    case 131: case 137: case 132: case 134:
      if (address_mode == mode_64bit && (sizeflag & DFLAG))
 {
   s = names64[code - 138 + add];
   break;
 }
      code += 149 - 138;

    case 149: case 146: case 144: case 147:
    case 142: case 148: case 143: case 145:
      USED_REX (REX_W);
      if (rex & REX_W)
 s = names64[code - 149 + add];
      else if (sizeflag & DFLAG)
 s = names32[code - 149 + add];
      else
 s = names16[code - 149 + add];
      used_prefixes |= (prefixes & PREFIX_DATA);
      break;
    default:
      s = INTERNAL_DISASSEMBLER_ERROR;
      break;
    }
  oappend (s);
}
