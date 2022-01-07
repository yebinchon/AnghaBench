
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int tmp ;
struct sk_buff {int dummy; } ;
struct TYPE_4__ {int type; int serial; } ;
struct rxrpc_skb_priv {TYPE_2__ hdr; } ;
struct rxrpc_connection {scalar_t__ state; int lock; int state_lock; int * channels; TYPE_1__* security; int debug_id; } ;
typedef int __be32 ;
struct TYPE_3__ {int (* respond_to_challenge ) (struct rxrpc_connection*,struct sk_buff*,int *) ;int (* verify_response ) (struct rxrpc_connection*,struct sk_buff*,int *) ;int (* init_connection_security ) (struct rxrpc_connection*) ;int (* prime_packet_security ) (struct rxrpc_connection*) ;} ;


 int ECONNABORTED ;
 int EPROTO ;
 int RXRPC_CALL_REMOTELY_ABORTED ;
 scalar_t__ RXRPC_CONN_REMOTELY_ABORTED ;
 scalar_t__ RXRPC_CONN_SERVER ;
 scalar_t__ RXRPC_CONN_SERVER_CHALLENGING ;
 int RXRPC_MAXCALLS ;



 int _enter (char*,int ,int,int ) ;
 int _leave (char*,int) ;
 int _proto (char*,int ,int ) ;
 int kleave (char*,scalar_t__) ;
 int ntohl (int ) ;
 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;
 int rxrpc_abort_calls (struct rxrpc_connection*,int ,int ) ;
 int rxrpc_call_is_secure (int ) ;
 struct rxrpc_skb_priv* rxrpc_skb (struct sk_buff*) ;
 int skb_copy_bits (struct sk_buff*,int ,int *,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct rxrpc_connection*,struct sk_buff*,int *) ;
 int stub2 (struct rxrpc_connection*,struct sk_buff*,int *) ;
 int stub3 (struct rxrpc_connection*) ;
 int stub4 (struct rxrpc_connection*) ;

__attribute__((used)) static int rxrpc_process_event(struct rxrpc_connection *conn,
          struct sk_buff *skb,
          u32 *_abort_code)
{
 struct rxrpc_skb_priv *sp = rxrpc_skb(skb);
 __be32 tmp;
 u32 serial;
 int loop, ret;

 if (conn->state >= RXRPC_CONN_REMOTELY_ABORTED) {
  kleave(" = -ECONNABORTED [%u]", conn->state);
  return -ECONNABORTED;
 }

 serial = ntohl(sp->hdr.serial);

 _enter("{%d},{%u,%%%u},", conn->debug_id, sp->hdr.type, serial);

 switch (sp->hdr.type) {
 case 130:
  if (skb_copy_bits(skb, 0, &tmp, sizeof(tmp)) < 0)
   return -EPROTO;
  _proto("Rx ABORT %%%u { ac=%d }", serial, ntohl(tmp));

  conn->state = RXRPC_CONN_REMOTELY_ABORTED;
  rxrpc_abort_calls(conn, RXRPC_CALL_REMOTELY_ABORTED,
      ntohl(tmp));
  return -ECONNABORTED;

 case 129:
  if (conn->security)
   return conn->security->respond_to_challenge(
    conn, skb, _abort_code);
  return -EPROTO;

 case 128:
  if (!conn->security)
   return -EPROTO;

  ret = conn->security->verify_response(conn, skb, _abort_code);
  if (ret < 0)
   return ret;

  ret = conn->security->init_connection_security(conn);
  if (ret < 0)
   return ret;

  conn->security->prime_packet_security(conn);
  read_lock_bh(&conn->lock);
  spin_lock(&conn->state_lock);

  if (conn->state == RXRPC_CONN_SERVER_CHALLENGING) {
   conn->state = RXRPC_CONN_SERVER;
   for (loop = 0; loop < RXRPC_MAXCALLS; loop++)
    rxrpc_call_is_secure(conn->channels[loop]);
  }

  spin_unlock(&conn->state_lock);
  read_unlock_bh(&conn->lock);
  return 0;

 default:
  _leave(" = -EPROTO [%u]", sp->hdr.type);
  return -EPROTO;
 }
}
