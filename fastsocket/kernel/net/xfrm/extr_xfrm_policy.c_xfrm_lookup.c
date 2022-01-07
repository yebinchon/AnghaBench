
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct net {int dummy; } ;
struct flowi {int dummy; } ;
struct dst_entry {int dummy; } ;


 int EAGAIN ;
 int EREMOTE ;
 int __xfrm_lookup (struct net*,struct dst_entry**,struct flowi*,struct sock*,int) ;
 int dst_release (struct dst_entry*) ;

int xfrm_lookup(struct net *net, struct dst_entry **dst_p, struct flowi *fl,
  struct sock *sk, int flags)
{
 int err = __xfrm_lookup(net, dst_p, fl, sk, flags);

 if (err == -EREMOTE) {
  dst_release(*dst_p);
  *dst_p = ((void*)0);
  err = -EAGAIN;
 }

 return err;
}
