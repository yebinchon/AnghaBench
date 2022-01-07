
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd ;


 int * _bfd_new_bfd_contained_in (int *) ;

bfd *
_bfd_create_empty_archive_element_shell (bfd *obfd)
{
  return _bfd_new_bfd_contained_in (obfd);
}
