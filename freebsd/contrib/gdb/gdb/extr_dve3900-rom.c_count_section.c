
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int bfd ;
struct TYPE_4__ {int flags; } ;
typedef TYPE_1__ asection ;


 int SEC_LOAD ;
 scalar_t__ bfd_section_size (int *,TYPE_1__*) ;

__attribute__((used)) static void
count_section (bfd *abfd, asection *s, unsigned int *section_count)
{
  if (s->flags & SEC_LOAD && bfd_section_size (abfd, s) != 0)
    (*section_count)++;
}
