
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd_vma ;
typedef int bfd_size_type ;
typedef int bfd_byte ;
typedef int bfd_boolean ;
typedef int bfd ;


 int FALSE ;
 int TRUE ;
 int bfd_bwrite (void*,int ,int *) ;
 int ieee_write_int5 (int *,int ) ;

__attribute__((used)) static bfd_boolean
ieee_write_int5_out (bfd *abfd, bfd_vma value)
{
  bfd_byte b[5];

  ieee_write_int5 (b, value);
  if (bfd_bwrite ((void *) b, (bfd_size_type) 5, abfd) != 5)
    return FALSE;
  return TRUE;
}
