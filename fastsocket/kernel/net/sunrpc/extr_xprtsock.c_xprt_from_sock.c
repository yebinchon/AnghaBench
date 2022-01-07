
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {scalar_t__ sk_user_data; } ;
struct rpc_xprt {int dummy; } ;



__attribute__((used)) static inline struct rpc_xprt *xprt_from_sock(struct sock *sk)
{
 return (struct rpc_xprt *) sk->sk_user_data;
}
