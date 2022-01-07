
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfd_link_info {int dummy; } ;
typedef int bfd_boolean ;
typedef int bfd ;


 int FALSE ;
 int _bfd_generic_link_add_archive_symbols (int *,struct bfd_link_info*,int ) ;

 int bfd_error_wrong_format ;
 int bfd_get_format (int *) ;

 int bfd_set_error (int ) ;
 int coff_link_add_object_symbols (int *,struct bfd_link_info*) ;
 int coff_link_check_archive_element ;

bfd_boolean
_bfd_coff_link_add_symbols (bfd *abfd, struct bfd_link_info *info)
{
  switch (bfd_get_format (abfd))
    {
    case 128:
      return coff_link_add_object_symbols (abfd, info);
    case 129:
      return _bfd_generic_link_add_archive_symbols
 (abfd, info, coff_link_check_archive_element);
    default:
      bfd_set_error (bfd_error_wrong_format);
      return FALSE;
    }
}
