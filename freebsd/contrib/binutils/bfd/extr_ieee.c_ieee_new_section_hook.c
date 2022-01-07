
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ieee_per_section_type ;
typedef int bfd_boolean ;
typedef int bfd ;
struct TYPE_6__ {scalar_t__ used_by_bfd; } ;
typedef TYPE_1__ asection ;
struct TYPE_7__ {TYPE_1__* section; int * data; } ;


 int FALSE ;
 int _bfd_generic_new_section_hook (int *,TYPE_1__*) ;
 scalar_t__ bfd_alloc (int *,int) ;
 TYPE_2__* ieee_per_section (TYPE_1__*) ;

__attribute__((used)) static bfd_boolean
ieee_new_section_hook (bfd *abfd, asection *newsect)
{
  if (!newsect->used_by_bfd)
    {
      newsect->used_by_bfd = bfd_alloc (abfd, sizeof (ieee_per_section_type));
      if (!newsect->used_by_bfd)
 return FALSE;
    }
  ieee_per_section (newsect)->data = ((void*)0);
  ieee_per_section (newsect)->section = newsect;
  return _bfd_generic_new_section_hook (abfd, newsect);
}
