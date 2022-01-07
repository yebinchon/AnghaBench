
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xfrm_state {int dummy; } ;
struct net {int dummy; } ;


 struct xfrm_state* __xfrm_find_acq_byseq (struct net*,int ,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int xfrm_state_lock ;

struct xfrm_state *xfrm_find_acq_byseq(struct net *net, u32 mark, u32 seq)
{
 struct xfrm_state *x;

 spin_lock_bh(&xfrm_state_lock);
 x = __xfrm_find_acq_byseq(net, mark, seq);
 spin_unlock_bh(&xfrm_state_lock);
 return x;
}
