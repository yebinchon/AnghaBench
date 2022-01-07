
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {struct ncp_server* sk_user_data; } ;
struct TYPE_2__ {int tq; } ;
struct ncp_server {TYPE_1__ rcv; int (* error_report ) (struct sock*) ;} ;


 int schedule_work (int *) ;
 int stub1 (struct sock*) ;

void ncp_tcp_error_report(struct sock *sk)
{
 struct ncp_server *server = sk->sk_user_data;

 server->error_report(sk);
 schedule_work(&server->rcv.tq);
}
