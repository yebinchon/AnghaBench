
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sprintf (char*,char*,unsigned int) ;

__attribute__((used)) static void
unw_print_xyreg (char *cp, unsigned int x, unsigned int ytreg)
{
  switch ((x << 1) | ((ytreg >> 7) & 1))
    {
    case 0:
      sprintf (cp, "r%u", (ytreg & 0x1f));
      break;

    case 1:
      sprintf (cp, "f%u", (ytreg & 0x1f));
      break;

    case 2:
      sprintf (cp, "b%u", (ytreg & 0x1f));
      break;
    }
}
