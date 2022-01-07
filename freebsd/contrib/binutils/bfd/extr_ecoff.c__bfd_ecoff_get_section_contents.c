
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int file_ptr ;
typedef int bfd_size_type ;
typedef int bfd_boolean ;
typedef int bfd ;
typedef int asection ;


 int _bfd_generic_get_section_contents (int *,int *,void*,int ,int ) ;

bfd_boolean
_bfd_ecoff_get_section_contents (bfd *abfd,
     asection *section,
     void * location,
     file_ptr offset,
     bfd_size_type count)
{
  return _bfd_generic_get_section_contents (abfd, section, location,
         offset, count);
}
