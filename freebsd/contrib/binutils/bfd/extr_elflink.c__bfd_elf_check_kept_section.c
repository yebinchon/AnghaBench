
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct bfd_link_info {int dummy; } ;
struct TYPE_7__ {int flags; scalar_t__ size; struct TYPE_7__* kept_section; } ;
typedef TYPE_1__ asection ;


 int SEC_GROUP ;
 TYPE_1__* match_group_member (TYPE_1__*,TYPE_1__*,struct bfd_link_info*) ;

asection *
_bfd_elf_check_kept_section (asection *sec, struct bfd_link_info *info)
{
  asection *kept;

  kept = sec->kept_section;
  if (kept != ((void*)0))
    {
      if ((kept->flags & SEC_GROUP) != 0)
 kept = match_group_member (sec, kept, info);
      if (kept != ((void*)0) && sec->size != kept->size)
 kept = ((void*)0);
      sec->kept_section = kept;
    }
  return kept;
}
