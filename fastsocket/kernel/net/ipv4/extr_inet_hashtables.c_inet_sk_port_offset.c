
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sock {int dummy; } ;
struct inet_sock {int dport; int daddr; int rcv_saddr; } ;


 struct inet_sock* inet_sk (struct sock const*) ;
 int secure_ipv4_port_ephemeral (int ,int ,int ) ;

__attribute__((used)) static inline u32 inet_sk_port_offset(const struct sock *sk)
{
 const struct inet_sock *inet = inet_sk(sk);
 return secure_ipv4_port_ephemeral(inet->rcv_saddr, inet->daddr,
       inet->dport);
}
