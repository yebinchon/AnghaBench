
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mod; } ;


 int OP_E (int ,int) ;
 int OP_M (int ,int) ;
 TYPE_1__ modrm ;
 int obuf ;
 int q_mode ;
 int strcpy (int ,char*) ;
 int v_mode ;

__attribute__((used)) static void
OP_VMX2 (int bytemode, int sizeflag)
{
  if (modrm.mod == 3)
    {
      strcpy (obuf, "rdseed");
      OP_E (v_mode, sizeflag);
    }
  else
    {
      strcpy (obuf, "vmptrst");
      OP_M (q_mode, sizeflag);
    }
}
