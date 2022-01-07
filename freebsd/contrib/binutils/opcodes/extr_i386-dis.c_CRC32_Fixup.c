
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mod; int rm; } ;


 int DFLAG ;
 int INTERNAL_DISASSEMBLER_ERROR ;
 int MODRM_CHECK ;
 int OP_E (int,int) ;
 int PREFIX_DATA ;
 int REX_B ;
 int REX_W ;
 int USED_REX (int) ;

 int codep ;
 int intel_syntax ;
 TYPE_1__ modrm ;
 int * names16 ;
 int * names32 ;
 int * names64 ;
 int * names8 ;
 int * names8rex ;
 int oappend (int ) ;
 char* obuf ;
 int prefixes ;
 int rex ;
 int strlen (char*) ;
 int used_prefixes ;


__attribute__((used)) static void
CRC32_Fixup (int bytemode, int sizeflag)
{

  char *p = obuf + strlen (obuf);

  switch (bytemode)
    {
    case 129:
      if (intel_syntax)
 break;

      *p++ = 'b';
      break;
    case 128:
      if (intel_syntax)
 break;

      USED_REX (REX_W);
      if (rex & REX_W)
 *p++ = 'q';
      else if (sizeflag & DFLAG)
 *p++ = 'l';
      else
 *p++ = 'w';
      used_prefixes |= (prefixes & PREFIX_DATA);
      break;
    default:
      oappend (INTERNAL_DISASSEMBLER_ERROR);
      break;
    }
  *p = '\0';

  if (modrm.mod == 3)
    {
      int add;


      MODRM_CHECK;
      codep++;

      USED_REX (REX_B);
      add = (rex & REX_B) ? 8 : 0;
      if (bytemode == 129)
 {
   USED_REX (0);
   if (rex)
     oappend (names8rex[modrm.rm + add]);
   else
     oappend (names8[modrm.rm + add]);
 }
      else
 {
   USED_REX (REX_W);
   if (rex & REX_W)
     oappend (names64[modrm.rm + add]);
   else if ((prefixes & PREFIX_DATA))
     oappend (names16[modrm.rm + add]);
   else
     oappend (names32[modrm.rm + add]);
 }
    }
  else
    OP_E (bytemode, sizeflag);
}
