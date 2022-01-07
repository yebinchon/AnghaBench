
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct inet_sock {scalar_t__ rcv_saddr; } ;


 struct inet_sock* inet_sk (struct sock const*) ;
 int ipv6_only_sock (struct sock const*) ;

__attribute__((used)) static int ipv4_rcv_saddr_equal(const struct sock *sk1, const struct sock *sk2)
{
 struct inet_sock *inet1 = inet_sk(sk1), *inet2 = inet_sk(sk2);

 return (!ipv6_only_sock(sk2) &&
   (!inet1->rcv_saddr || !inet2->rcv_saddr ||
     inet1->rcv_saddr == inet2->rcv_saddr));
}
