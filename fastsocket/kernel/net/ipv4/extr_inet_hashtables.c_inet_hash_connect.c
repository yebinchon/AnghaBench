
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct inet_timewait_death_row {int dummy; } ;


 int __inet_check_established ;
 int __inet_hash_connect (struct inet_timewait_death_row*,struct sock*,int ,int ,int ) ;
 int __inet_hash_nolisten ;
 scalar_t__ enable_receive_flow_deliver ;
 int inet_sk_port_offset (struct sock*) ;
 int rfd_inet_hash_connect (struct inet_timewait_death_row*,struct sock*,int ,int ,int ) ;

int inet_hash_connect(struct inet_timewait_death_row *death_row,
        struct sock *sk)
{
 int ret;
 if (enable_receive_flow_deliver)
  ret = rfd_inet_hash_connect(death_row, sk, inet_sk_port_offset(sk),
    __inet_check_established, __inet_hash_nolisten);
 else
  ret = __inet_hash_connect(death_row, sk, inet_sk_port_offset(sk),
   __inet_check_established, __inet_hash_nolisten);

 return ret;
}
