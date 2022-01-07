
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct TYPE_2__ {struct sock* fibnl; } ;
struct net {TYPE_1__ ipv4; } ;


 int EAFNOSUPPORT ;
 int NETLINK_FIB_LOOKUP ;
 int THIS_MODULE ;
 struct sock* netlink_kernel_create (struct net*,int ,int ,int ,int *,int ) ;
 int nl_fib_input ;

__attribute__((used)) static int nl_fib_lookup_init(struct net *net)
{
 struct sock *sk;
 sk = netlink_kernel_create(net, NETLINK_FIB_LOOKUP, 0,
       nl_fib_input, ((void*)0), THIS_MODULE);
 if (sk == ((void*)0))
  return -EAFNOSUPPORT;
 net->ipv4.fibnl = sk;
 return 0;
}
