
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct tcf_hashinfo {int lock; int hmask; struct tcf_common** htab; } ;
struct tcf_common {scalar_t__ tcfc_index; struct tcf_common* tcfc_next; } ;


 int read_lock_bh (int ) ;
 int read_unlock_bh (int ) ;
 size_t tcf_hash (scalar_t__,int ) ;

struct tcf_common *tcf_hash_lookup(u32 index, struct tcf_hashinfo *hinfo)
{
 struct tcf_common *p;

 read_lock_bh(hinfo->lock);
 for (p = hinfo->htab[tcf_hash(index, hinfo->hmask)]; p;
      p = p->tcfc_next) {
  if (p->tcfc_index == index)
   break;
 }
 read_unlock_bh(hinfo->lock);

 return p;
}
