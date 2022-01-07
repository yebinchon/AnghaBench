
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct journal_head {struct journal_head* b_tprev; struct journal_head* b_tnext; } ;



__attribute__((used)) static inline void
__blist_add_buffer(struct journal_head **list, struct journal_head *jh)
{
 if (!*list) {
  jh->b_tnext = jh->b_tprev = jh;
  *list = jh;
 } else {

  struct journal_head *first = *list, *last = first->b_tprev;
  jh->b_tprev = last;
  jh->b_tnext = first;
  last->b_tnext = first->b_tprev = jh;
 }
}
