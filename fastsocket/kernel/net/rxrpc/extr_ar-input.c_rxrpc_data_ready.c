
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct udphdr {int dummy; } ;
struct sock {struct rxrpc_local* sk_user_data; } ;
struct sk_buff {int priority; } ;
struct rxrpc_transport {int dummy; } ;
struct TYPE_6__ {int flags; scalar_t__ epoch; scalar_t__ cid; scalar_t__ callNumber; scalar_t__ type; scalar_t__ seq; } ;
struct rxrpc_skb_priv {TYPE_2__ hdr; } ;
struct rxrpc_peer {int dummy; } ;
struct rxrpc_local {int acceptor; int accept_queue; int usage; } ;
struct rxrpc_connection {int debug_id; } ;
struct TYPE_7__ {scalar_t__ saddr; } ;
struct TYPE_5__ {int source; } ;


 int ASSERT (int) ;
 int BUG () ;
 int EAGAIN ;
 scalar_t__ IS_ERR (struct rxrpc_peer*) ;
 int RXRPC_CLIENT_INITIATED ;
 scalar_t__ RXRPC_N_PACKET_TYPES ;
 scalar_t__ RXRPC_PACKET_TYPE_DATA ;
 int RX_CALL_DEAD ;
 int RX_INVALID_OPERATION ;
 int RX_PROTOCOL_ERROR ;
 int UDP_INC_STATS_BH (int *,int ,int ) ;
 int UDP_MIB_INDATAGRAMS ;
 int UDP_MIB_INERRORS ;
 int _debug (char*,...) ;
 int _enter (char*,struct sock*,int) ;
 int _leave (char*) ;
 int _net (char*,...) ;
 int _proto (char*,scalar_t__) ;
 scalar_t__ atomic_read (int *) ;
 scalar_t__ cpu_to_be32 (int) ;
 int init_net ;
 TYPE_4__* ip_hdr (struct sk_buff*) ;
 int irqs_disabled () ;
 int memset (struct rxrpc_skb_priv*,int ,int) ;
 int ntohl (scalar_t__) ;
 int ntohs (int ) ;
 int pskb_pull (struct sk_buff*,int) ;
 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;
 struct rxrpc_connection* rxrpc_find_connection (struct rxrpc_transport*,TYPE_2__*) ;
 struct rxrpc_peer* rxrpc_find_peer (struct rxrpc_local*,scalar_t__,int ) ;
 struct rxrpc_transport* rxrpc_find_transport (struct rxrpc_local*,struct rxrpc_peer*) ;
 int rxrpc_free_skb (struct sk_buff*) ;
 int rxrpc_get_local (struct rxrpc_local*) ;
 int rxrpc_local_lock ;
 int rxrpc_new_skb (struct sk_buff*) ;
 int rxrpc_post_packet_to_call (struct rxrpc_connection*,struct sk_buff*) ;
 int rxrpc_post_packet_to_conn (struct rxrpc_connection*,struct sk_buff*) ;
 int rxrpc_put_connection (struct rxrpc_connection*) ;
 int rxrpc_put_local (struct rxrpc_local*) ;
 int rxrpc_put_peer (struct rxrpc_peer*) ;
 int rxrpc_put_transport (struct rxrpc_transport*) ;
 int rxrpc_queue_work (int *) ;
 int rxrpc_reject_packet (struct rxrpc_local*,struct sk_buff*) ;
 struct rxrpc_skb_priv* rxrpc_skb (struct sk_buff*) ;
 scalar_t__ skb_checksum_complete (struct sk_buff*) ;
 scalar_t__ skb_copy_bits (struct sk_buff*,int,TYPE_2__*,int) ;
 int skb_orphan (struct sk_buff*) ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 struct sk_buff* skb_recv_datagram (struct sock*,int ,int,int*) ;
 TYPE_1__* udp_hdr (struct sk_buff*) ;

void rxrpc_data_ready(struct sock *sk, int count)
{
 struct rxrpc_connection *conn;
 struct rxrpc_transport *trans;
 struct rxrpc_skb_priv *sp;
 struct rxrpc_local *local;
 struct rxrpc_peer *peer;
 struct sk_buff *skb;
 int ret;

 _enter("%p, %d", sk, count);

 ASSERT(!irqs_disabled());

 read_lock_bh(&rxrpc_local_lock);
 local = sk->sk_user_data;
 if (local && atomic_read(&local->usage) > 0)
  rxrpc_get_local(local);
 else
  local = ((void*)0);
 read_unlock_bh(&rxrpc_local_lock);
 if (!local) {
  _leave(" [local dead]");
  return;
 }

 skb = skb_recv_datagram(sk, 0, 1, &ret);
 if (!skb) {
  rxrpc_put_local(local);
  if (ret == -EAGAIN)
   return;
  _debug("UDP socket error %d", ret);
  return;
 }

 rxrpc_new_skb(skb);

 _net("recv skb %p", skb);


 if (skb_checksum_complete(skb)) {
  rxrpc_free_skb(skb);
  rxrpc_put_local(local);
  UDP_INC_STATS_BH(&init_net, UDP_MIB_INERRORS, 0);
  _leave(" [CSUM failed]");
  return;
 }

 UDP_INC_STATS_BH(&init_net, UDP_MIB_INDATAGRAMS, 0);



 skb_orphan(skb);
 sp = rxrpc_skb(skb);
 memset(sp, 0, sizeof(*sp));

 _net("Rx UDP packet from %08x:%04hu",
      ntohl(ip_hdr(skb)->saddr), ntohs(udp_hdr(skb)->source));


 if (skb_copy_bits(skb, sizeof(struct udphdr), &sp->hdr,
     sizeof(sp->hdr)) < 0)
  goto bad_message;
 if (!pskb_pull(skb, sizeof(struct udphdr) + sizeof(sp->hdr)))
  BUG();

 _net("Rx RxRPC %s ep=%x call=%x:%x",
      sp->hdr.flags & RXRPC_CLIENT_INITIATED ? "ToServer" : "ToClient",
      ntohl(sp->hdr.epoch),
      ntohl(sp->hdr.cid),
      ntohl(sp->hdr.callNumber));

 if (sp->hdr.type == 0 || sp->hdr.type >= RXRPC_N_PACKET_TYPES) {
  _proto("Rx Bad Packet Type %u", sp->hdr.type);
  goto bad_message;
 }

 if (sp->hdr.type == RXRPC_PACKET_TYPE_DATA &&
     (sp->hdr.callNumber == 0 || sp->hdr.seq == 0))
  goto bad_message;

 peer = rxrpc_find_peer(local, ip_hdr(skb)->saddr, udp_hdr(skb)->source);
 if (IS_ERR(peer))
  goto cant_route_call;

 trans = rxrpc_find_transport(local, peer);
 rxrpc_put_peer(peer);
 if (!trans)
  goto cant_route_call;

 conn = rxrpc_find_connection(trans, &sp->hdr);
 rxrpc_put_transport(trans);
 if (!conn)
  goto cant_route_call;

 _debug("CONN %p {%d}", conn, conn->debug_id);

 if (sp->hdr.callNumber == 0)
  rxrpc_post_packet_to_conn(conn, skb);
 else
  rxrpc_post_packet_to_call(conn, skb);
 rxrpc_put_connection(conn);
 rxrpc_put_local(local);
 return;

cant_route_call:
 _debug("can't route call");
 if (sp->hdr.flags & RXRPC_CLIENT_INITIATED &&
     sp->hdr.type == RXRPC_PACKET_TYPE_DATA) {
  if (sp->hdr.seq == cpu_to_be32(1)) {
   _debug("first packet");
   skb_queue_tail(&local->accept_queue, skb);
   rxrpc_queue_work(&local->acceptor);
   rxrpc_put_local(local);
   _leave(" [incoming]");
   return;
  }
  skb->priority = RX_INVALID_OPERATION;
 } else {
  skb->priority = RX_CALL_DEAD;
 }

 _debug("reject");
 rxrpc_reject_packet(local, skb);
 rxrpc_put_local(local);
 _leave(" [no call]");
 return;

bad_message:
 skb->priority = RX_PROTOCOL_ERROR;
 rxrpc_reject_packet(local, skb);
 rxrpc_put_local(local);
 _leave(" [badmsg]");
}
