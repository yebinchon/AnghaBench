
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DFLAG ;
 char* INTERNAL_DISASSEMBLER_ERROR ;
 int PREFIX_DATA ;
 int REX_W ;
 int USED_REX (int) ;
 int intel_syntax ;
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
OP_IMREG (int code, int sizeflag)
{
  const char *s;

  switch (code)
    {
    case 132:
      if (intel_syntax)
 s = "dx";
      else
 s = "(%dx)";
      break;
    case 157: case 149: case 144: case 153:
    case 130: case 154: case 131: case 147:
      s = names16[code - 157];
      break;
    case 135: case 129: case 150:
    case 145: case 134: case 133:
      s = names_seg[code - 135];
      break;
    case 158: case 159: case 151: case 152:
    case 146: case 148: case 155: case 156:
      USED_REX (0);
      if (rex)
 s = names8rex[code - 158];
      else
 s = names8[code - 158];
      break;
    case 143: case 140: case 138: case 141:
    case 136: case 142: case 137: case 139:
      USED_REX (REX_W);
      if (rex & REX_W)
 s = names64[code - 143];
      else if (sizeflag & DFLAG)
 s = names32[code - 143];
      else
 s = names16[code - 143];
      used_prefixes |= (prefixes & PREFIX_DATA);
      break;
    case 128:
      if ((rex & REX_W) || (sizeflag & DFLAG))
 s = *names32;
      else
 s = *names16;
      if (!(rex & REX_W))
 used_prefixes |= (prefixes & PREFIX_DATA);
      break;
    default:
      s = INTERNAL_DISASSEMBLER_ERROR;
      break;
    }
  oappend (s);
}
