
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {struct ncp_server* sk_user_data; } ;
struct TYPE_2__ {int tq; } ;
struct ncp_server {TYPE_1__ rcv; int (* data_ready ) (struct sock*,int) ;} ;


 int schedule_work (int *) ;
 int stub1 (struct sock*,int) ;

void ncp_tcp_data_ready(struct sock *sk, int len)
{
 struct ncp_server *server = sk->sk_user_data;

 server->data_ready(sk, len);
 schedule_work(&server->rcv.tq);
}
