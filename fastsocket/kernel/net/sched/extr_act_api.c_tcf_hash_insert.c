
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_hashinfo {int lock; struct tcf_common** htab; int hmask; } ;
struct tcf_common {struct tcf_common* tcfc_next; int tcfc_index; } ;


 unsigned int tcf_hash (int ,int ) ;
 int write_lock_bh (int ) ;
 int write_unlock_bh (int ) ;

void tcf_hash_insert(struct tcf_common *p, struct tcf_hashinfo *hinfo)
{
 unsigned int h = tcf_hash(p->tcfc_index, hinfo->hmask);

 write_lock_bh(hinfo->lock);
 p->tcfc_next = hinfo->htab[h];
 hinfo->htab[h] = p;
 write_unlock_bh(hinfo->lock);
}
