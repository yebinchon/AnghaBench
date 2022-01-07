
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scrub_block {int page_count; TYPE_1__* pagev; int ref_count; } ;
struct TYPE_2__ {scalar_t__ page; } ;


 int __free_page (scalar_t__) ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int kfree (struct scrub_block*) ;

__attribute__((used)) static void scrub_block_put(struct scrub_block *sblock)
{
 if (atomic_dec_and_test(&sblock->ref_count)) {
  int i;

  for (i = 0; i < sblock->page_count; i++)
   if (sblock->pagev[i].page)
    __free_page(sblock->pagev[i].page);
  kfree(sblock);
 }
}
