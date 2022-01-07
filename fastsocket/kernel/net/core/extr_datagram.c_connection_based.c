
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {scalar_t__ sk_type; } ;


 scalar_t__ SOCK_SEQPACKET ;
 scalar_t__ SOCK_STREAM ;

__attribute__((used)) static inline int connection_based(struct sock *sk)
{
 return sk->sk_type == SOCK_SEQPACKET || sk->sk_type == SOCK_STREAM;
}
