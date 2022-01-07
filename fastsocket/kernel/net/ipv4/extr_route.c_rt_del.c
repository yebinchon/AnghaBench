
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


 int ip_rt_put (struct rtable*) ;
 int rt_free (struct rtable*) ;
 int rt_hash_lock_addr (unsigned int) ;
 TYPE_3__* rt_hash_table ;
 scalar_t__ rt_is_expired (struct rtable*) ;
 int spin_lock_bh (int ) ;
 int spin_unlock_bh (int ) ;

__attribute__((used)) static void rt_del(unsigned hash, struct rtable *rt)
{
 struct rtable **rthp, *aux;

 rthp = &rt_hash_table[hash].chain;
 spin_lock_bh(rt_hash_lock_addr(hash));
 ip_rt_put(rt);
 while ((aux = *rthp) != ((void*)0)) {
  if (aux == rt || rt_is_expired(aux)) {
   *rthp = aux->u.dst.rt_next;
   rt_free(aux);
   continue;
  }
  rthp = &aux->u.dst.rt_next;
 }
 spin_unlock_bh(rt_hash_lock_addr(hash));
}
