
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mod; int rm; } ;


 int MODRM_CHECK ;
 int OP_E (int,int) ;
 int REX_B ;
 int USED_REX (int) ;
 int codep ;
 size_t intel_syntax ;
 TYPE_1__ modrm ;
 int oappend (int *) ;
 int rex ;
 int * scratchbuf ;
 int sprintf (int *,char*,int) ;

__attribute__((used)) static void
OP_EX (int bytemode, int sizeflag)
{
  int add = 0;
  if (modrm.mod != 3)
    {
      OP_E (bytemode, sizeflag);
      return;
    }
  USED_REX (REX_B);
  if (rex & REX_B)
    add = 8;


  MODRM_CHECK;
  codep++;
  sprintf (scratchbuf, "%%xmm%d", modrm.rm + add);
  oappend (&scratchbuf[intel_syntax]);
}
