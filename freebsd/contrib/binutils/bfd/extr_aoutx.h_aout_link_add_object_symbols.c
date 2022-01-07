
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfd_link_info {int keep_memory; } ;
typedef int bfd_boolean ;
typedef int bfd ;


 int FALSE ;
 int TRUE ;
 int aout_get_external_symbols (int *) ;
 int aout_link_add_symbols (int *,struct bfd_link_info*) ;
 int aout_link_free_symbols (int *) ;

__attribute__((used)) static bfd_boolean
aout_link_add_object_symbols (bfd *abfd, struct bfd_link_info *info)
{
  if (! aout_get_external_symbols (abfd))
    return FALSE;
  if (! aout_link_add_symbols (abfd, info))
    return FALSE;
  if (! info->keep_memory)
    {
      if (! aout_link_free_symbols (abfd))
 return FALSE;
    }
  return TRUE;
}
