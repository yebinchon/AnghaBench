
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int node; int ref; } ;
struct tipc_sock {TYPE_1__* p; TYPE_2__ peer_name; } ;
struct tipc_msg {int dummy; } ;
struct socket {int state; int sk; } ;
struct TYPE_3__ {int ref; } ;


 int ECONNREFUSED ;
 int SS_CONNECTED ;
 int SS_DISCONNECTING ;
 scalar_t__ msg_errcode (struct tipc_msg*) ;
 int msg_importance (struct tipc_msg*) ;
 int msg_orignode (struct tipc_msg*) ;
 int msg_origport (struct tipc_msg*) ;
 int tipc_connect2port (int ,TYPE_2__*) ;
 int tipc_set_portimportance (int ,int ) ;
 struct tipc_sock* tipc_sk (int ) ;

__attribute__((used)) static int auto_connect(struct socket *sock, struct tipc_msg *msg)
{
 struct tipc_sock *tsock = tipc_sk(sock->sk);

 if (msg_errcode(msg)) {
  sock->state = SS_DISCONNECTING;
  return -ECONNREFUSED;
 }

 tsock->peer_name.ref = msg_origport(msg);
 tsock->peer_name.node = msg_orignode(msg);
 tipc_connect2port(tsock->p->ref, &tsock->peer_name);
 tipc_set_portimportance(tsock->p->ref, msg_importance(msg));
 sock->state = SS_CONNECTED;
 return 0;
}
