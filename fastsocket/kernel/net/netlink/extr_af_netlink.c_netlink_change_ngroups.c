
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;


 int __netlink_change_ngroups (struct sock*,unsigned int) ;
 int netlink_table_grab () ;
 int netlink_table_ungrab () ;

int netlink_change_ngroups(struct sock *sk, unsigned int groups)
{
 int err;

 netlink_table_grab();
 err = __netlink_change_ngroups(sk, groups);
 netlink_table_ungrab();

 return err;
}
