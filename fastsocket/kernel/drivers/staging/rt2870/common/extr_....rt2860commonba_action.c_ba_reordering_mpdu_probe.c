
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reordering_mpdu {int dummy; } ;
struct reordering_list {struct reordering_mpdu* next; } ;


 int ASSERT (struct reordering_list*) ;

__attribute__((used)) static inline struct reordering_mpdu *ba_reordering_mpdu_probe(struct reordering_list *list)
 {
 ASSERT(list);

  return(list->next);
 }
