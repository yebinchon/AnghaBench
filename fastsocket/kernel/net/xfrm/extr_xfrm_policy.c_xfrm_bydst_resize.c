
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* policy_bydst; } ;
struct net {TYPE_2__ xfrm; } ;
struct hlist_head {int dummy; } ;
struct TYPE_3__ {unsigned int hmask; struct hlist_head* table; } ;


 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;
 int xfrm_dst_hash_transfer (struct hlist_head*,struct hlist_head*,unsigned int) ;
 struct hlist_head* xfrm_hash_alloc (unsigned int) ;
 int xfrm_hash_free (struct hlist_head*,unsigned int) ;
 unsigned int xfrm_new_hash_mask (unsigned int) ;
 int xfrm_policy_lock ;

__attribute__((used)) static void xfrm_bydst_resize(struct net *net, int dir)
{
 unsigned int hmask = net->xfrm.policy_bydst[dir].hmask;
 unsigned int nhashmask = xfrm_new_hash_mask(hmask);
 unsigned int nsize = (nhashmask + 1) * sizeof(struct hlist_head);
 struct hlist_head *odst = net->xfrm.policy_bydst[dir].table;
 struct hlist_head *ndst = xfrm_hash_alloc(nsize);
 int i;

 if (!ndst)
  return;

 write_lock_bh(&xfrm_policy_lock);

 for (i = hmask; i >= 0; i--)
  xfrm_dst_hash_transfer(odst + i, ndst, nhashmask);

 net->xfrm.policy_bydst[dir].table = ndst;
 net->xfrm.policy_bydst[dir].hmask = nhashmask;

 write_unlock_bh(&xfrm_policy_lock);

 xfrm_hash_free(odst, (hmask + 1) * sizeof(struct hlist_head));
}
