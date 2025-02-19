
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ bfd_signed_vma ;
struct TYPE_2__ {scalar_t__ vma; int index; } ;
typedef TYPE_1__ asection ;



__attribute__((used)) static int
sort_sections (const void *a, const void *b)
{
  const asection *const *s1 = a;
  const asection *const *s2 = b;
  bfd_signed_vma delta = (*s1)->vma - (*s2)->vma;

  if (delta != 0)
    return delta < 0 ? -1 : 1;

  return (*s1)->index - (*s2)->index;
}
