
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dst_entry {struct dst_entry* next; int __refcnt; } ;


 int atomic_read (int *) ;
 int dst_free (struct dst_entry*) ;
 struct dst_entry* icmp6_dst_gc_list ;
 int icmp6_dst_lock ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

int icmp6_dst_gc(void)
{
 struct dst_entry *dst, *next, **pprev;
 int more = 0;

 next = ((void*)0);

 spin_lock_bh(&icmp6_dst_lock);
 pprev = &icmp6_dst_gc_list;

 while ((dst = *pprev) != ((void*)0)) {
  if (!atomic_read(&dst->__refcnt)) {
   *pprev = dst->next;
   dst_free(dst);
  } else {
   pprev = &dst->next;
   ++more;
  }
 }

 spin_unlock_bh(&icmp6_dst_lock);

 return more;
}
