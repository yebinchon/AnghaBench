
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfd_link_info {int keep_memory; } ;
typedef scalar_t__ bfd_boolean ;
typedef int bfd ;


 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 int _bfd_coff_free_symbols (int *) ;
 int _bfd_coff_get_external_symbols (int *) ;
 int xcoff_link_add_symbols (int *,struct bfd_link_info*) ;
 int xcoff_link_check_ar_symbols (int *,struct bfd_link_info*,scalar_t__*) ;

__attribute__((used)) static bfd_boolean
xcoff_link_check_archive_element (bfd *abfd,
      struct bfd_link_info *info,
      bfd_boolean *pneeded)
{
  if (! _bfd_coff_get_external_symbols (abfd))
    return FALSE;

  if (! xcoff_link_check_ar_symbols (abfd, info, pneeded))
    return FALSE;

  if (*pneeded)
    {
      if (! xcoff_link_add_symbols (abfd, info))
 return FALSE;
    }

  if (! info->keep_memory || ! *pneeded)
    {
      if (! _bfd_coff_free_symbols (abfd))
 return FALSE;
    }

  return TRUE;
}
