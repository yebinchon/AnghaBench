
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reordering_mpdu {struct reordering_mpdu* next; } ;
struct reordering_list {struct reordering_mpdu* next; int qlen; } ;



__attribute__((used)) static inline void ba_enqueue(struct reordering_list *list, struct reordering_mpdu *mpdu_blk)
{
 list->qlen++;
 mpdu_blk->next = list->next;
 list->next = mpdu_blk;
}
