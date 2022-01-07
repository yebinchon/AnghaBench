
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd_size_type ;
typedef int bfd_byte ;
typedef int bfd_boolean ;
typedef int bfd ;


 int EOF ;
 int TRUE ;
 int bfd_bread (int*,int ,int *) ;
 scalar_t__ bfd_error_file_truncated ;
 scalar_t__ bfd_get_error () ;

__attribute__((used)) static int
srec_get_byte (bfd *abfd, bfd_boolean *errorptr)
{
  bfd_byte c;

  if (bfd_bread (&c, (bfd_size_type) 1, abfd) != 1)
    {
      if (bfd_get_error () != bfd_error_file_truncated)
 *errorptr = TRUE;
      return EOF;
    }

  return (int) (c & 0xff);
}
