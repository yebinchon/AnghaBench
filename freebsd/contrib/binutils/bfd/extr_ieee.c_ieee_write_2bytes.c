
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd_size_type ;
typedef int bfd_byte ;
typedef int bfd_boolean ;
typedef int bfd ;


 int FALSE ;
 int TRUE ;
 int bfd_bwrite (void*,int ,int *) ;

__attribute__((used)) static bfd_boolean
ieee_write_2bytes (bfd *abfd, int bytes)
{
  bfd_byte buffer[2];

  buffer[0] = bytes >> 8;
  buffer[1] = bytes & 0xff;
  if (bfd_bwrite ((void *) buffer, (bfd_size_type) 2, abfd) != 2)
    return FALSE;
  return TRUE;
}
