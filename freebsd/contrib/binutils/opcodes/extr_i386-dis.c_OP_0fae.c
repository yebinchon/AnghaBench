
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mod; int reg; scalar_t__ rm; } ;


 int BadOp () ;
 int OP_E (int,int) ;
 int PREFIX_REPZ ;
 int dq_mode ;
 TYPE_1__ modrm ;
 int obuf ;
 int prefixes ;
 int strcpy (int,char*) ;
 int strlen (int) ;
 int used_prefixes ;

__attribute__((used)) static void
OP_0fae (int bytemode, int sizeflag)
{
  if (modrm.mod == 3)
    {
      if (modrm.reg >= 5 && modrm.reg <= 7 && modrm.rm == 0)
 {
   if (modrm.reg == 7)
     strcpy (obuf + strlen (obuf) - sizeof ("clflush") + 1, "sfence");
   else if (modrm.reg == 6)
     strcpy (obuf + strlen (obuf) - sizeof ("xsaveopt") + 1, "mfence");
   else if (modrm.reg == 5)
     strcpy (obuf + strlen (obuf) - sizeof ("xrstor") + 1, "lfence");
   bytemode = 0;
 }
      else if (modrm.reg <= 3 && (prefixes & PREFIX_REPZ) != 0)
 {
   if (modrm.reg == 0)
     strcpy (obuf + strlen (obuf) - sizeof ("fxsave") + 1, "rdfsbase");
   else if (modrm.reg == 1)
     strcpy (obuf + strlen (obuf) - sizeof ("fxrstor") + 1, "rdgsbase");
   else if (modrm.reg == 2)
     strcpy (obuf + strlen (obuf) - sizeof ("ldmxcsr") + 1, "wrfsbase");
   else if (modrm.reg == 3)
     strcpy (obuf + strlen (obuf) - sizeof ("stmxcsr") + 1, "wrgsbase");
   used_prefixes |= PREFIX_REPZ;
   bytemode = dq_mode;
 }
      else
 {
   BadOp ();
   return;
 }
    }

  OP_E (bytemode, sizeflag);
}
