
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct bfd_link_info {TYPE_1__* hash; } ;
typedef int bfd_boolean ;
struct TYPE_15__ {int flags; int archive_pass; int xvec; } ;
typedef TYPE_2__ bfd ;
struct TYPE_14__ {int creator; } ;


 int DYNAMIC ;
 int FALSE ;
 int TRUE ;
 int _bfd_generic_link_add_archive_symbols (TYPE_2__*,struct bfd_link_info*,int (*) (TYPE_2__*,struct bfd_link_info*,int *)) ;

 int bfd_check_format (TYPE_2__*,int const) ;
 int bfd_error_wrong_format ;
 int bfd_get_format (TYPE_2__*) ;
 int bfd_has_map (TYPE_2__*) ;

 TYPE_2__* bfd_openr_next_archived_file (TYPE_2__*,TYPE_2__*) ;
 int bfd_set_error (int ) ;
 int xcoff_link_add_object_symbols (TYPE_2__*,struct bfd_link_info*) ;
 int xcoff_link_check_archive_element (TYPE_2__*,struct bfd_link_info*,int *) ;

bfd_boolean
_bfd_xcoff_bfd_link_add_symbols (bfd *abfd, struct bfd_link_info *info)
{
  switch (bfd_get_format (abfd))
    {
    case 128:
      return xcoff_link_add_object_symbols (abfd, info);

    case 129:






      if (bfd_has_map (abfd))
 {
   if (! (_bfd_generic_link_add_archive_symbols
   (abfd, info, xcoff_link_check_archive_element)))
     return FALSE;
 }

      {
 bfd *member;

 member = bfd_openr_next_archived_file (abfd, ((void*)0));
 while (member != ((void*)0))
   {
     if (bfd_check_format (member, 128)
  && (info->hash->creator == member->xvec)
  && (! bfd_has_map (abfd) || (member->flags & DYNAMIC) != 0))
       {
  bfd_boolean needed;

  if (! xcoff_link_check_archive_element (member, info,
       &needed))
    return FALSE;
  if (needed)
    member->archive_pass = -1;
       }
     member = bfd_openr_next_archived_file (abfd, member);
   }
      }

      return TRUE;

    default:
      bfd_set_error (bfd_error_wrong_format);
      return FALSE;
    }
}
