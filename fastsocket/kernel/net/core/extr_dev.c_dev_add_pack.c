
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct packet_type {scalar_t__ type; int list; } ;


 int ETH_P_ALL ;
 int PTYPE_HASH_MASK ;
 scalar_t__ htons (int ) ;
 int list_add_rcu (int *,int *) ;
 int ntohs (scalar_t__) ;
 int ptype_all ;
 int * ptype_base ;
 int ptype_lock ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void dev_add_pack(struct packet_type *pt)
{
 int hash;

 spin_lock_bh(&ptype_lock);
 if (pt->type == htons(ETH_P_ALL))
  list_add_rcu(&pt->list, &ptype_all);
 else {
  hash = ntohs(pt->type) & PTYPE_HASH_MASK;
  list_add_rcu(&pt->list, &ptype_base[hash]);
 }
 spin_unlock_bh(&ptype_lock);
}
