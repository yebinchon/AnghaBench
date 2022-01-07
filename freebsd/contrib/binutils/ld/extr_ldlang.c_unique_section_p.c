
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct unique_sections {int name; struct unique_sections* next; } ;
typedef int bfd_boolean ;
struct TYPE_5__ {char* name; int * owner; } ;
typedef TYPE_1__ asection ;
struct TYPE_6__ {scalar_t__ relocatable; } ;


 int FALSE ;
 int TRUE ;
 scalar_t__ bfd_is_group_section (int *,TYPE_1__ const*) ;
 scalar_t__ fnmatch (int ,char const*,int ) ;
 TYPE_3__ link_info ;
 scalar_t__ strcmp (int ,char const*) ;
 struct unique_sections* unique_section_list ;
 scalar_t__ wildcardp (int ) ;

bfd_boolean
unique_section_p (const asection *sec)
{
  struct unique_sections *unam;
  const char *secnam;

  if (link_info.relocatable
      && sec->owner != ((void*)0)
      && bfd_is_group_section (sec->owner, sec))
    return TRUE;

  secnam = sec->name;
  for (unam = unique_section_list; unam; unam = unam->next)
    if (wildcardp (unam->name)
 ? fnmatch (unam->name, secnam, 0) == 0
 : strcmp (unam->name, secnam) == 0)
      {
 return TRUE;
      }

  return FALSE;
}
