
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int dummy; } ;
struct rxrpc_call {TYPE_2__* conn; } ;
struct TYPE_4__ {TYPE_1__* security; } ;
struct TYPE_3__ {int (* verify_packet ) (struct rxrpc_call const*,struct sk_buff*,int *) ;} ;


 int stub1 (struct rxrpc_call const*,struct sk_buff*,int *) ;

int rxrpc_verify_packet(const struct rxrpc_call *call, struct sk_buff *skb,
   u32 *_abort_code)
{
 if (call->conn->security)
  return call->conn->security->verify_packet(
   call, skb, _abort_code);
 return 0;
}
