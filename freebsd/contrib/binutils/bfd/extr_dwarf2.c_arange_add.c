
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arange {scalar_t__ high; scalar_t__ low; struct arange* next; } ;
typedef scalar_t__ bfd_vma ;
typedef int bfd ;


 struct arange* bfd_zalloc (int *,int) ;

__attribute__((used)) static void
arange_add (bfd *abfd, struct arange *first_arange, bfd_vma low_pc, bfd_vma high_pc)
{
  struct arange *arange;


  if (first_arange->high == 0)
    {
      first_arange->low = low_pc;
      first_arange->high = high_pc;
      return;
    }


  arange = first_arange;
  do
    {
      if (low_pc == arange->high)
 {
   arange->high = high_pc;
   return;
 }
      if (high_pc == arange->low)
 {
   arange->low = low_pc;
   return;
 }
      arange = arange->next;
    }
  while (arange);



  arange = bfd_zalloc (abfd, sizeof (*arange));
  arange->low = low_pc;
  arange->high = high_pc;
  arange->next = first_arange->next;
  first_arange->next = arange;
}
