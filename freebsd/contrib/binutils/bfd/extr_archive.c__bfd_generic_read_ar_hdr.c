
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd ;


 void* _bfd_generic_read_ar_hdr_mag (int *,int *) ;

void *
_bfd_generic_read_ar_hdr (bfd *abfd)
{
  return _bfd_generic_read_ar_hdr_mag (abfd, ((void*)0));
}
