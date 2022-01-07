
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct rxrpc_call {TYPE_2__* conn; } ;
struct TYPE_4__ {TYPE_1__* security; } ;
struct TYPE_3__ {int (* secure_packet ) (struct rxrpc_call const*,struct sk_buff*,size_t,void*) ;} ;


 int stub1 (struct rxrpc_call const*,struct sk_buff*,size_t,void*) ;

int rxrpc_secure_packet(const struct rxrpc_call *call,
   struct sk_buff *skb,
   size_t data_size,
   void *sechdr)
{
 if (call->conn->security)
  return call->conn->security->secure_packet(
   call, skb, data_size, sechdr);
 return 0;
}
