
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct request_sock {int dummy; } ;


 int __tcp_v4_send_synack (struct sock*,struct request_sock*,int *) ;

__attribute__((used)) static int tcp_v4_send_synack(struct sock *sk, struct request_sock *req)
{
 return __tcp_v4_send_synack(sk, req, ((void*)0));
}
