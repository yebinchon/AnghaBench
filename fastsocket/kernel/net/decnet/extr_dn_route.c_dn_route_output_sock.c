
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct flowi {scalar_t__ proto; } ;
struct dst_entry {int dummy; } ;


 int MSG_DONTWAIT ;
 int MSG_TRYHARD ;
 int XFRM_LOOKUP_WAIT ;
 int __dn_route_output_key (struct dst_entry**,struct flowi*,int) ;
 int init_net ;
 int xfrm_lookup (int *,struct dst_entry**,struct flowi*,struct sock*,int ) ;

int dn_route_output_sock(struct dst_entry **pprt, struct flowi *fl, struct sock *sk, int flags)
{
 int err;

 err = __dn_route_output_key(pprt, fl, flags & MSG_TRYHARD);
 if (err == 0 && fl->proto) {
  err = xfrm_lookup(&init_net, pprt, fl, sk,
     (flags & MSG_DONTWAIT) ? 0 : XFRM_LOOKUP_WAIT);
 }
 return err;
}
