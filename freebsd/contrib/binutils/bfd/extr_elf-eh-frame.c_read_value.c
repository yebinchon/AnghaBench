
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd_vma ;
typedef int bfd_byte ;
typedef int bfd ;


 int BFD_FAIL () ;
 int bfd_get_16 (int *,int *) ;
 int bfd_get_32 (int *,int *) ;
 int bfd_get_64 (int *,int *) ;
 int bfd_get_signed_16 (int *,int *) ;
 int bfd_get_signed_32 (int *,int *) ;
 int bfd_get_signed_64 (int *,int *) ;

__attribute__((used)) static bfd_vma
read_value (bfd *abfd, bfd_byte *buf, int width, int is_signed)
{
  bfd_vma value;

  switch (width)
    {
    case 2:
      if (is_signed)
 value = bfd_get_signed_16 (abfd, buf);
      else
 value = bfd_get_16 (abfd, buf);
      break;
    case 4:
      if (is_signed)
 value = bfd_get_signed_32 (abfd, buf);
      else
 value = bfd_get_32 (abfd, buf);
      break;
    case 8:
      if (is_signed)
 value = bfd_get_signed_64 (abfd, buf);
      else
 value = bfd_get_64 (abfd, buf);
      break;
    default:
      BFD_FAIL ();
      return 0;
    }

  return value;
}
