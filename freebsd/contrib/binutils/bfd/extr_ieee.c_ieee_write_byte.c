
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
ieee_write_byte (bfd *abfd, int barg)
{
  bfd_byte byte;

  byte = barg;
  if (bfd_bwrite ((void *) &byte, (bfd_size_type) 1, abfd) != 1)
    return FALSE;
  return TRUE;
}
