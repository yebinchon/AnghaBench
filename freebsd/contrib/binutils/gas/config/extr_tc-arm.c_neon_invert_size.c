
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int abort () ;

__attribute__((used)) static void
neon_invert_size (unsigned *xlo, unsigned *xhi, int size)
{
  unsigned immlo = xlo ? *xlo : 0;
  unsigned immhi = xhi ? *xhi : 0;

  switch (size)
    {
    case 8:
      immlo = (~immlo) & 0xff;
      break;

    case 16:
      immlo = (~immlo) & 0xffff;
      break;

    case 64:
      immhi = (~immhi) & 0xffffffff;


    case 32:
      immlo = (~immlo) & 0xffffffff;
      break;

    default:
      abort ();
    }

  if (xlo)
    *xlo = immlo;

  if (xhi)
    *xhi = immhi;
}
