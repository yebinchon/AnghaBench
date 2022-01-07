
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int dummy; } ;
struct dst_entry {struct dst_entry* next; } ;


 int dst_free (struct dst_entry*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int xfrm_policy_sk_bundle_lock ;
 struct dst_entry* xfrm_policy_sk_bundles ;

__attribute__((used)) static void __xfrm_garbage_collect(struct net *net)
{
 struct dst_entry *head, *next;

 spin_lock_bh(&xfrm_policy_sk_bundle_lock);
 head = xfrm_policy_sk_bundles;
 xfrm_policy_sk_bundles = ((void*)0);
 spin_unlock_bh(&xfrm_policy_sk_bundle_lock);

 while (head) {
  next = head->next;
  dst_free(head);
  head = next;
 }
}
