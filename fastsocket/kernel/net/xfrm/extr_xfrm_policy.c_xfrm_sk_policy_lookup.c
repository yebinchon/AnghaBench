
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int m; int v; } ;
struct xfrm_policy {int security; TYPE_1__ mark; int selector; } ;
struct sock {int sk_mark; int sk_family; struct xfrm_policy** sk_policy; } ;
struct flowi {int secid; } ;


 struct xfrm_policy* ERR_PTR (int) ;
 int ESRCH ;
 int policy_to_flow_dir (int) ;
 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;
 int security_xfrm_policy_lookup (int ,int ,int ) ;
 int xfrm_pol_hold (struct xfrm_policy*) ;
 int xfrm_policy_lock ;
 int xfrm_selector_match (int *,struct flowi*,int ) ;

__attribute__((used)) static struct xfrm_policy *xfrm_sk_policy_lookup(struct sock *sk, int dir, struct flowi *fl)
{
 struct xfrm_policy *pol;

 read_lock_bh(&xfrm_policy_lock);
 if ((pol = sk->sk_policy[dir]) != ((void*)0)) {
  int match = xfrm_selector_match(&pol->selector, fl,
      sk->sk_family);
  int err = 0;

  if (match) {
   if ((sk->sk_mark & pol->mark.m) != pol->mark.v) {
    pol = ((void*)0);
    goto out;
   }
   err = security_xfrm_policy_lookup(pol->security,
            fl->secid,
            policy_to_flow_dir(dir));
   if (!err)
    xfrm_pol_hold(pol);
   else if (err == -ESRCH)
    pol = ((void*)0);
   else
    pol = ERR_PTR(err);
  } else
   pol = ((void*)0);
 }
out:
 read_unlock_bh(&xfrm_policy_lock);
 return pol;
}
