
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct journal_head {TYPE_1__* b_tprev; struct journal_head* b_tnext; } ;
struct TYPE_2__ {struct journal_head* b_tnext; } ;



__attribute__((used)) static inline void
__blist_del_buffer(struct journal_head **list, struct journal_head *jh)
{
 if (*list == jh) {
  *list = jh->b_tnext;
  if (*list == jh)
   *list = ((void*)0);
 }
 jh->b_tprev->b_tnext = jh->b_tnext;
 jh->b_tnext->b_tprev = jh->b_tprev;
}
