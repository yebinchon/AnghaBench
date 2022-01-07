
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;


 int BUG () ;

__attribute__((used)) static void netlink_data_ready(struct sock *sk, int len)
{
 BUG();
}
