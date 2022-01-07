
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ ident; scalar_t__ ctr; } ;
typedef TYPE_1__ counts_entry_t ;



__attribute__((used)) static int
htab_counts_entry_eq (const void *of1, const void *of2)
{
  const counts_entry_t *entry1 = of1;
  const counts_entry_t *entry2 = of2;

  return entry1->ident == entry2->ident && entry1->ctr == entry2->ctr;
}
