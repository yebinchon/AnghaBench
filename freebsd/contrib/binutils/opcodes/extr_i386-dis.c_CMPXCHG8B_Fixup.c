
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OP_M (int,int) ;
 int REX_W ;
 int USED_REX (int) ;
 int o_mode ;
 char* obuf ;
 int rex ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static void
CMPXCHG8B_Fixup (int bytemode, int sizeflag)
{
  USED_REX (REX_W);
  if (rex & REX_W)
    {

      char *p = obuf + strlen (obuf) - 2;
      strcpy (p, "16b");
      bytemode = o_mode;
    }
  OP_M (bytemode, sizeflag);
}
