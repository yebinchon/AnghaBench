
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OP_M (int,int) ;
 int* codep ;
 scalar_t__ obuf ;
 int strcpy (scalar_t__,char const*) ;
 scalar_t__ strlen (scalar_t__) ;

__attribute__((used)) static void
INVLPG_Fixup (int bytemode, int sizeflag)
{
  const char *alt;

  switch (*codep)
    {
    case 0xf8:
      alt = "swapgs";
      break;
    case 0xf9:
      alt = "rdtscp";
      break;
    default:
      OP_M (bytemode, sizeflag);
      return;
    }

  strcpy (obuf + strlen (obuf) - 6, alt);
  codep++;
}
