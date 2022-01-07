
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int bfd_boolean ;
typedef int bfd ;
struct TYPE_4__ {int alignment_power; int filepos; int size; int flags; } ;
typedef TYPE_1__ asection ;


 int FALSE ;
 int TRUE ;
 int * bfd_get_section_by_name (int *,char*) ;
 TYPE_1__* bfd_make_section_with_flags (int *,char*,int ) ;

__attribute__((used)) static bfd_boolean
elfcore_maybe_make_sect (bfd *abfd, char *name, asection *sect)
{
  asection *sect2;

  if (bfd_get_section_by_name (abfd, name) != ((void*)0))
    return TRUE;

  sect2 = bfd_make_section_with_flags (abfd, name, sect->flags);
  if (sect2 == ((void*)0))
    return FALSE;

  sect2->size = sect->size;
  sect2->filepos = sect->filepos;
  sect2->alignment_power = sect->alignment_power;
  return TRUE;
}
