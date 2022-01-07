
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {struct ncp_server* sk_user_data; } ;
struct TYPE_2__ {int tq; scalar_t__ creq; } ;
struct ncp_server {TYPE_1__ tx; int (* write_space ) (struct sock*) ;} ;


 int schedule_work (int *) ;
 int stub1 (struct sock*) ;

void ncp_tcp_write_space(struct sock *sk)
{
 struct ncp_server *server = sk->sk_user_data;



 server->write_space(sk);
 if (server->tx.creq)
  schedule_work(&server->tx.tq);
}
