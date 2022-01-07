
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sub_seq {struct publication* zone_list; struct publication* cluster_list; struct publication* node_list; } ;
struct publication {struct publication* zone_list_next; struct publication* cluster_list_next; struct publication* node_list_next; int node; int ref; } ;
struct name_seq {int lock; } ;


 scalar_t__ in_own_cluster (int ) ;
 int in_scope (int ,int ) ;
 scalar_t__ likely (int) ;
 struct sub_seq* nameseq_find_subseq (struct name_seq*,int ) ;
 struct name_seq* nametbl_find_seq (int ) ;
 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int tipc_nametbl_lock ;
 int tipc_own_addr ;
 scalar_t__ unlikely (int) ;

u32 tipc_nametbl_translate(u32 type, u32 instance, u32 *destnode)
{
 struct sub_seq *sseq;
 struct publication *publ = ((void*)0);
 struct name_seq *seq;
 u32 ref;

 if (!in_scope(*destnode, tipc_own_addr))
  return 0;

 read_lock_bh(&tipc_nametbl_lock);
 seq = nametbl_find_seq(type);
 if (unlikely(!seq))
  goto not_found;
 sseq = nameseq_find_subseq(seq, instance);
 if (unlikely(!sseq))
  goto not_found;
 spin_lock_bh(&seq->lock);


 if (likely(!*destnode)) {
  publ = sseq->node_list;
  if (publ) {
   sseq->node_list = publ->node_list_next;
found:
   ref = publ->ref;
   *destnode = publ->node;
   spin_unlock_bh(&seq->lock);
   read_unlock_bh(&tipc_nametbl_lock);
   return ref;
  }
  publ = sseq->cluster_list;
  if (publ) {
   sseq->cluster_list = publ->cluster_list_next;
   goto found;
  }
  publ = sseq->zone_list;
  if (publ) {
   sseq->zone_list = publ->zone_list_next;
   goto found;
  }
 }


 else if (*destnode == tipc_own_addr) {
  publ = sseq->node_list;
  if (publ) {
   sseq->node_list = publ->node_list_next;
   goto found;
  }
 } else if (in_own_cluster(*destnode)) {
  publ = sseq->cluster_list;
  if (publ) {
   sseq->cluster_list = publ->cluster_list_next;
   goto found;
  }
 } else {
  publ = sseq->zone_list;
  if (publ) {
   sseq->zone_list = publ->zone_list_next;
   goto found;
  }
 }
 spin_unlock_bh(&seq->lock);
not_found:
 *destnode = 0;
 read_unlock_bh(&tipc_nametbl_lock);
 return 0;
}
