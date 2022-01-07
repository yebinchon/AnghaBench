
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int add_time; } ;
struct xfrm_policy {scalar_t__ type; int index; TYPE_1__ curlft; } ;
struct sock {struct xfrm_policy** sk_policy; } ;
struct net {int dummy; } ;


 int EINVAL ;
 scalar_t__ XFRM_POLICY_MAX ;
 scalar_t__ XFRM_POLICY_TYPE_MAIN ;
 int __xfrm_policy_link (struct xfrm_policy*,scalar_t__) ;
 int __xfrm_policy_unlink (struct xfrm_policy*,scalar_t__) ;
 int get_seconds () ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;
 int xfrm_gen_index (struct net*,scalar_t__) ;
 int xfrm_policy_kill (struct xfrm_policy*) ;
 int xfrm_policy_lock ;
 struct net* xp_net (struct xfrm_policy*) ;

int xfrm_sk_policy_insert(struct sock *sk, int dir, struct xfrm_policy *pol)
{
 struct net *net = xp_net(pol);
 struct xfrm_policy *old_pol;






 write_lock_bh(&xfrm_policy_lock);
 old_pol = sk->sk_policy[dir];
 sk->sk_policy[dir] = pol;
 if (pol) {
  pol->curlft.add_time = get_seconds();
  pol->index = xfrm_gen_index(net, XFRM_POLICY_MAX+dir);
  __xfrm_policy_link(pol, XFRM_POLICY_MAX+dir);
 }
 if (old_pol)



  __xfrm_policy_unlink(old_pol, XFRM_POLICY_MAX+dir);
 write_unlock_bh(&xfrm_policy_lock);

 if (old_pol) {
  xfrm_policy_kill(old_pol);
 }
 return 0;
}
