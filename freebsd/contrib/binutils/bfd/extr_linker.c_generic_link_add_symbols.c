
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
 int generic_link_add_object_symbols (int *,struct bfd_link_info*,int ) ;
 int generic_link_check_archive_element_collect ;
 int generic_link_check_archive_element_no_collect ;

__attribute__((used)) static bfd_boolean
generic_link_add_symbols (bfd *abfd,
     struct bfd_link_info *info,
     bfd_boolean collect)
{
  bfd_boolean ret;

  switch (bfd_get_format (abfd))
    {
    case 128:
      ret = generic_link_add_object_symbols (abfd, info, collect);
      break;
    case 129:
      ret = (_bfd_generic_link_add_archive_symbols
      (abfd, info,
       (collect
        ? generic_link_check_archive_element_collect
        : generic_link_check_archive_element_no_collect)));
      break;
    default:
      bfd_set_error (bfd_error_wrong_format);
      ret = FALSE;
    }

  return ret;
}
