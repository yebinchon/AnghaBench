
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct sock {int dummy; } ;
struct TYPE_4__ {int s6_addr32; } ;
struct TYPE_3__ {int s6_addr32; } ;
struct ipv6_pinfo {TYPE_2__ daddr; TYPE_1__ rcv_saddr; } ;
struct inet_sock {int dport; } ;


 struct ipv6_pinfo* inet6_sk (struct sock const*) ;
 struct inet_sock* inet_sk (struct sock const*) ;
 int secure_ipv6_port_ephemeral (int ,int ,int ) ;

__attribute__((used)) static inline u32 inet6_sk_port_offset(const struct sock *sk)
{
 const struct inet_sock *inet = inet_sk(sk);
 const struct ipv6_pinfo *np = inet6_sk(sk);
 return secure_ipv6_port_ephemeral(np->rcv_saddr.s6_addr32,
       np->daddr.s6_addr32,
       inet->dport);
}
