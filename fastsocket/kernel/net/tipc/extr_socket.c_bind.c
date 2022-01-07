
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct socket {int sk; } ;
struct TYPE_6__ {int lower; int upper; } ;
struct TYPE_5__ {TYPE_2__ nameseq; } ;
struct sockaddr_tipc {scalar_t__ family; scalar_t__ addrtype; TYPE_1__ addr; int scope; } ;
struct sockaddr {int dummy; } ;
struct TYPE_7__ {int ref; } ;


 scalar_t__ AF_TIPC ;
 int EAFNOSUPPORT ;
 int EINVAL ;
 scalar_t__ TIPC_ADDR_NAME ;
 scalar_t__ TIPC_ADDR_NAMESEQ ;
 int tipc_publish (int ,int ,TYPE_2__*) ;
 TYPE_3__* tipc_sk_port (int ) ;
 int tipc_withdraw (int ,int ,TYPE_2__*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int bind(struct socket *sock, struct sockaddr *uaddr, int uaddr_len)
{
 struct sockaddr_tipc *addr = (struct sockaddr_tipc *)uaddr;
 u32 portref = tipc_sk_port(sock->sk)->ref;

 if (unlikely(!uaddr_len))
  return tipc_withdraw(portref, 0, ((void*)0));

 if (uaddr_len < sizeof(struct sockaddr_tipc))
  return -EINVAL;
 if (addr->family != AF_TIPC)
  return -EAFNOSUPPORT;

 if (addr->addrtype == TIPC_ADDR_NAME)
  addr->addr.nameseq.upper = addr->addr.nameseq.lower;
 else if (addr->addrtype != TIPC_ADDR_NAMESEQ)
  return -EAFNOSUPPORT;

 return (addr->scope > 0) ?
  tipc_publish(portref, addr->scope, &addr->addr.nameseq) :
  tipc_withdraw(portref, -addr->scope, &addr->addr.nameseq);
}
