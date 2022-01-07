
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {struct sock* sk; } ;
struct sockaddr_nl {int nl_groups; int nl_pid; scalar_t__ nl_pad; int nl_family; } ;
struct sockaddr {int dummy; } ;
struct sock {int dummy; } ;
struct netlink_sock {int * groups; int pid; int dst_group; int dst_pid; } ;


 int AF_NETLINK ;
 int netlink_group_mask (int ) ;
 struct netlink_sock* nlk_sk (struct sock*) ;

__attribute__((used)) static int netlink_getname(struct socket *sock, struct sockaddr *addr,
      int *addr_len, int peer)
{
 struct sock *sk = sock->sk;
 struct netlink_sock *nlk = nlk_sk(sk);
 struct sockaddr_nl *nladdr = (struct sockaddr_nl *)addr;

 nladdr->nl_family = AF_NETLINK;
 nladdr->nl_pad = 0;
 *addr_len = sizeof(*nladdr);

 if (peer) {
  nladdr->nl_pid = nlk->dst_pid;
  nladdr->nl_groups = netlink_group_mask(nlk->dst_group);
 } else {
  nladdr->nl_pid = nlk->pid;
  nladdr->nl_groups = nlk->groups ? nlk->groups[0] : 0;
 }
 return 0;
}
