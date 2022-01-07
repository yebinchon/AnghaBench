
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mod; } ;


 int OP_E (int,int) ;
 int PREFIX_DATA ;
 int PREFIX_REPZ ;
 TYPE_1__ modrm ;
 int obuf ;
 int prefixes ;
 int strcpy (int ,char*) ;
 int used_prefixes ;
 int v_mode ;

__attribute__((used)) static void
OP_VMX (int bytemode, int sizeflag)
{
  if (modrm.mod == 3)
    {
      strcpy (obuf, "rdrand");
      OP_E (v_mode, sizeflag);
    }
  else
    {
      used_prefixes |= (prefixes & (PREFIX_DATA | PREFIX_REPZ));
      if (prefixes & PREFIX_DATA)
 strcpy (obuf, "vmclear");
      else if (prefixes & PREFIX_REPZ)
 strcpy (obuf, "vmxon");
      else
 strcpy (obuf, "vmptrld");
      OP_E (bytemode, sizeflag);
    }
}
