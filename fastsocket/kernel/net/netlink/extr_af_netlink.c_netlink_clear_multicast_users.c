
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;


 int __netlink_clear_multicast_users (struct sock*,unsigned int) ;
 int netlink_table_grab () ;
 int netlink_table_ungrab () ;

void netlink_clear_multicast_users(struct sock *ksk, unsigned int group)
{
 netlink_table_grab();
 __netlink_clear_multicast_users(ksk, group);
 netlink_table_ungrab();
}
