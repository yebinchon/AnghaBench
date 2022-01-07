
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct ipv6_mc_socklist {TYPE_1__* sflist; int sfmode; int addr; } ;
struct inet6_dev {int dummy; } ;
struct TYPE_2__ {int sl_max; int * sl_addr; int sl_count; } ;


 int IP6_SFLSIZE (int ) ;
 int ip6_mc_del_src (struct inet6_dev*,int *,int ,int ,int *,int ) ;
 int sock_kfree_s (struct sock*,TYPE_1__*,int ) ;

__attribute__((used)) static int ip6_mc_leave_src(struct sock *sk, struct ipv6_mc_socklist *iml,
       struct inet6_dev *idev)
{
 int err;




 if (!iml->sflist) {

  return ip6_mc_del_src(idev, &iml->addr, iml->sfmode, 0, ((void*)0), 0);
 }
 err = ip6_mc_del_src(idev, &iml->addr, iml->sfmode,
  iml->sflist->sl_count, iml->sflist->sl_addr, 0);
 sock_kfree_s(sk, iml->sflist, IP6_SFLSIZE(iml->sflist->sl_max));
 iml->sflist = ((void*)0);
 return err;
}
