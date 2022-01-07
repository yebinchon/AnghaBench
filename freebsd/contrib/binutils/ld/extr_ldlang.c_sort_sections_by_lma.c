
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int owner; } ;
typedef TYPE_1__ asection ;


 scalar_t__ bfd_section_lma (int ,TYPE_1__ const*) ;

__attribute__((used)) static int
sort_sections_by_lma (const void *arg1, const void *arg2)
{
  const asection *sec1 = *(const asection **) arg1;
  const asection *sec2 = *(const asection **) arg2;

  if (bfd_section_lma (sec1->owner, sec1)
      < bfd_section_lma (sec2->owner, sec2))
    return -1;
  else if (bfd_section_lma (sec1->owner, sec1)
    > bfd_section_lma (sec2->owner, sec2))
    return 1;

  return 0;
}
