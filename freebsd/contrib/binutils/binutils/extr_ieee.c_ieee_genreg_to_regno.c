
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd ;




 int bfd_get_arch (int *) ;

__attribute__((used)) static int
ieee_genreg_to_regno (bfd *abfd, int r)
{
  switch (bfd_get_arch (abfd))
    {
    case 128:


      if (r >= 18)
 r -= 2;
      break;

    case 129:


      ++r;
      break;

    default:
      break;
    }

  return r;
}
