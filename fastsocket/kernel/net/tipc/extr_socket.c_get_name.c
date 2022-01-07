
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int node; int ref; } ;
struct tipc_sock {TYPE_2__* p; TYPE_1__ peer_name; } ;
struct socket {scalar_t__ state; int sk; } ;
struct TYPE_8__ {scalar_t__ domain; } ;
struct TYPE_10__ {int node; int ref; } ;
struct TYPE_9__ {TYPE_3__ name; TYPE_5__ id; } ;
struct sockaddr_tipc {TYPE_4__ addr; scalar_t__ scope; int family; int addrtype; } ;
struct sockaddr {int dummy; } ;
struct TYPE_7__ {int ref; } ;


 int AF_TIPC ;
 int ENOTCONN ;
 scalar_t__ SS_CONNECTED ;
 scalar_t__ SS_DISCONNECTING ;
 int TIPC_ADDR_ID ;
 int tipc_ownidentity (int ,TYPE_5__*) ;
 struct tipc_sock* tipc_sk (int ) ;

__attribute__((used)) static int get_name(struct socket *sock, struct sockaddr *uaddr,
      int *uaddr_len, int peer)
{
 struct sockaddr_tipc *addr = (struct sockaddr_tipc *)uaddr;
 struct tipc_sock *tsock = tipc_sk(sock->sk);

 if (peer) {
  if ((sock->state != SS_CONNECTED) &&
   ((peer != 2) || (sock->state != SS_DISCONNECTING)))
   return -ENOTCONN;
  addr->addr.id.ref = tsock->peer_name.ref;
  addr->addr.id.node = tsock->peer_name.node;
 } else {
  tipc_ownidentity(tsock->p->ref, &addr->addr.id);
 }

 *uaddr_len = sizeof(*addr);
 addr->addrtype = TIPC_ADDR_ID;
 addr->family = AF_TIPC;
 addr->scope = 0;
 addr->addr.name.domain = 0;

 return 0;
}
