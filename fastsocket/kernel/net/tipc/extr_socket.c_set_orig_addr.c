
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tipc_msg {int dummy; } ;
struct TYPE_5__ {scalar_t__ domain; } ;
struct TYPE_4__ {int node; int ref; } ;
struct TYPE_6__ {TYPE_2__ name; TYPE_1__ id; } ;
struct sockaddr_tipc {scalar_t__ scope; TYPE_3__ addr; int addrtype; int family; } ;
struct msghdr {int msg_namelen; scalar_t__ msg_name; } ;


 int AF_TIPC ;
 int TIPC_ADDR_ID ;
 int msg_orignode (struct tipc_msg*) ;
 int msg_origport (struct tipc_msg*) ;

__attribute__((used)) static void set_orig_addr(struct msghdr *m, struct tipc_msg *msg)
{
 struct sockaddr_tipc *addr = (struct sockaddr_tipc *)m->msg_name;

 if (addr) {
  addr->family = AF_TIPC;
  addr->addrtype = TIPC_ADDR_ID;
  addr->addr.id.ref = msg_origport(msg);
  addr->addr.id.node = msg_orignode(msg);
  addr->addr.name.domain = 0;
  addr->scope = 0;
  m->msg_namelen = sizeof(struct sockaddr_tipc);
 }
}
