
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct rtable* rt_next; } ;
struct TYPE_5__ {TYPE_1__ dst; } ;
struct rtable {TYPE_2__ u; } ;
struct TYPE_6__ {struct rtable* chain; } ;


 int cond_resched () ;
 scalar_t__ need_resched () ;
 int rt_free (struct rtable*) ;
 int rt_hash_lock_addr (unsigned int) ;
 unsigned int rt_hash_mask ;
 TYPE_3__* rt_hash_table ;
 int rt_is_expired (struct rtable*) ;
 int spin_lock_bh (int ) ;
 int spin_unlock_bh (int ) ;

__attribute__((used)) static void rt_do_flush(int process_context)
{
 unsigned int i;
 struct rtable *rth, *next;
 struct rtable * tail;

 for (i = 0; i <= rt_hash_mask; i++) {
  if (process_context && need_resched())
   cond_resched();
  rth = rt_hash_table[i].chain;
  if (!rth)
   continue;

  spin_lock_bh(rt_hash_lock_addr(i));
  rth = rt_hash_table[i].chain;
  rt_hash_table[i].chain = ((void*)0);
  tail = ((void*)0);

  spin_unlock_bh(rt_hash_lock_addr(i));

  for (; rth != tail; rth = next) {
   next = rth->u.dst.rt_next;
   rt_free(rth);
  }
 }
}
