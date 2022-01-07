
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct rt6_info rt6_info ;
struct dst_entry {struct dst_entry* next; } ;


 int dst_free (struct dst_entry*) ;
 struct dst_entry* icmp6_dst_gc_list ;
 int icmp6_dst_lock ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void icmp6_clean_all(int (*func)(struct rt6_info *rt, void *arg),
       void *arg)
{
 struct dst_entry *dst, **pprev;

 spin_lock_bh(&icmp6_dst_lock);
 pprev = &icmp6_dst_gc_list;
 while ((dst = *pprev) != ((void*)0)) {
  struct rt6_info *rt = (struct rt6_info *) dst;
  if (func(rt, arg)) {
   *pprev = dst->next;
   dst_free(dst);
  } else {
   pprev = &dst->next;
  }
 }
 spin_unlock_bh(&icmp6_dst_lock);
}
