
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reordering_mpdu {int dummy; } ;
struct reordering_list {int dummy; } ;


 struct reordering_mpdu* ba_dequeue (struct reordering_list*) ;

__attribute__((used)) static inline struct reordering_mpdu *ba_reordering_mpdu_dequeue(struct reordering_list *list)
{
 return(ba_dequeue(list));
}
