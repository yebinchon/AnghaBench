
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reordering_mpdu {struct reordering_mpdu* next; } ;
struct reordering_list {struct reordering_mpdu* next; scalar_t__ qlen; } ;


 int ASSERT (struct reordering_list*) ;

__attribute__((used)) static inline struct reordering_mpdu * ba_dequeue(struct reordering_list *list)
{
 struct reordering_mpdu *mpdu_blk = ((void*)0);

 ASSERT(list);

  if (list->qlen)
  {
   list->qlen--;
   mpdu_blk = list->next;
   if (mpdu_blk)
   {
    list->next = mpdu_blk->next;
    mpdu_blk->next = ((void*)0);
   }
  }
 return mpdu_blk;
}
