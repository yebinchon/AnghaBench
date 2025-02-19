
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mod; int rm; } ;


 int MODRM_CHECK ;
 int OP_E (int,int) ;
 int PREFIX_DATA ;
 int codep ;
 size_t intel_syntax ;
 TYPE_1__ modrm ;
 int oappend (int *) ;
 int prefixes ;
 int q_mode ;
 int * scratchbuf ;
 int sprintf (int *,char*,int) ;
 int used_prefixes ;
 int v_mode ;
 int x_mode ;

__attribute__((used)) static void
OP_EMC (int bytemode, int sizeflag)
{
  if (modrm.mod != 3)
    {
      if (intel_syntax && bytemode == v_mode)
 {
   bytemode = (prefixes & PREFIX_DATA) ? x_mode : q_mode;
   used_prefixes |= (prefixes & PREFIX_DATA);
  }
      OP_E (bytemode, sizeflag);
      return;
    }


  MODRM_CHECK;
  codep++;
  used_prefixes |= (prefixes & PREFIX_DATA);
  sprintf (scratchbuf, "%%mm%d", modrm.rm);
  oappend (&scratchbuf[intel_syntax]);
}
