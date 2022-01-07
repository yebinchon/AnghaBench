
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; scalar_t__ vma; } ;
typedef TYPE_1__ asection ;


 int SEC_ALLOC ;

__attribute__((used)) static int
ecoff_sort_hdrs (const void * arg1, const void * arg2)
{
  const asection *hdr1 = *(const asection **) arg1;
  const asection *hdr2 = *(const asection **) arg2;

  if ((hdr1->flags & SEC_ALLOC) != 0)
    {
      if ((hdr2->flags & SEC_ALLOC) == 0)
 return -1;
    }
  else
    {
      if ((hdr2->flags & SEC_ALLOC) != 0)
 return 1;
    }
  if (hdr1->vma < hdr2->vma)
    return -1;
  else if (hdr1->vma > hdr2->vma)
    return 1;
  else
    return 0;
}
