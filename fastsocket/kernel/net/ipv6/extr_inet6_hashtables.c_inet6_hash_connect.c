
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct inet_timewait_death_row {int dummy; } ;


 int __inet6_check_established ;
 int __inet6_hash ;
 int __inet_hash_connect (struct inet_timewait_death_row*,struct sock*,int ,int ,int ) ;
 int inet6_sk_port_offset (struct sock*) ;

int inet6_hash_connect(struct inet_timewait_death_row *death_row,
         struct sock *sk)
{
 return __inet_hash_connect(death_row, sk, inet6_sk_port_offset(sk),
   __inet6_check_established, __inet6_hash);
}
