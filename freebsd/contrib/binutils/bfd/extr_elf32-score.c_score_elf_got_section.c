
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int bfd_boolean ;
typedef int bfd ;
struct TYPE_4__ {int flags; } ;
typedef TYPE_1__ asection ;


 int SEC_EXCLUDE ;
 TYPE_1__* bfd_get_section_by_name (int *,char*) ;

__attribute__((used)) static asection *
score_elf_got_section (bfd *abfd, bfd_boolean maybe_excluded)
{
  asection *sgot = bfd_get_section_by_name (abfd, ".got");

  if (sgot == ((void*)0) || (! maybe_excluded && (sgot->flags & SEC_EXCLUDE) != 0))
    return ((void*)0);
  return sgot;
}
