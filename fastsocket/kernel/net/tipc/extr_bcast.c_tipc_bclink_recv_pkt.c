
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_6__ {scalar_t__ last_in; scalar_t__ gap_after; scalar_t__ gap_to; scalar_t__ nack_sync; int deferred_tail; struct sk_buff* deferred_head; int defragm; int supported; } ;
struct tipc_node {TYPE_2__ bclink; } ;
struct tipc_msg {int dummy; } ;
struct sk_buff {struct sk_buff* next; } ;
struct TYPE_7__ {int duplicates; int deferred_recv; int recv_fragmented; int recv_fragments; int recv_bundled; int recv_bundles; int sent_acks; int recv_info; int recv_nacks; } ;
struct TYPE_8__ {TYPE_3__ stats; TYPE_1__* owner; } ;
struct TYPE_5__ {struct tipc_node* next; } ;


 scalar_t__ BCAST_PROTOCOL ;
 scalar_t__ MSG_BUNDLER ;
 scalar_t__ MSG_FRAGMENTER ;
 int TIPC_BCAST_LOSS_RATE ;
 int bc_lock ;
 TYPE_4__* bcl ;
 int bclink_ack_allowed (scalar_t__) ;
 int bclink_retransmit_pkt (int ,int ) ;
 int bclink_send_ack (struct tipc_node*) ;
 int bclink_send_nack (struct tipc_node*) ;
 int bclink_set_gap (struct tipc_node*) ;
 int buf_discard (struct sk_buff*) ;
 struct tipc_msg* buf_msg (struct sk_buff*) ;
 scalar_t__ buf_seqno (struct sk_buff*) ;
 scalar_t__ less (scalar_t__,scalar_t__) ;
 scalar_t__ likely (int) ;
 scalar_t__ mod (scalar_t__) ;
 int msg_bcast_ack (struct tipc_msg*) ;
 int msg_bcast_tag (struct tipc_msg*) ;
 int msg_bcgap_after (struct tipc_msg*) ;
 int msg_bcgap_to (struct tipc_msg*) ;
 int msg_dbg (struct tipc_msg*,char*) ;
 scalar_t__ msg_destnode (struct tipc_msg*) ;
 int msg_isdata (struct tipc_msg*) ;
 scalar_t__ msg_mc_netid (struct tipc_msg*) ;
 scalar_t__ msg_msgcnt (struct tipc_msg*) ;
 int msg_prevnode (struct tipc_msg*) ;
 scalar_t__ msg_seqno (struct tipc_msg*) ;
 scalar_t__ msg_user (struct tipc_msg*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int tipc_bclink_acknowledge (struct tipc_node*,int ) ;
 int tipc_bclink_peek_nack (scalar_t__,int ,int ,int ) ;
 scalar_t__ tipc_link_defer_pkt (struct sk_buff**,int *,struct sk_buff*) ;
 int tipc_link_recv_bundle (struct sk_buff*) ;
 scalar_t__ tipc_link_recv_fragment (int *,struct sk_buff**,struct tipc_msg**) ;
 scalar_t__ tipc_net_id ;
 int tipc_net_route_msg (struct sk_buff*) ;
 struct tipc_node* tipc_node_find (int ) ;
 int tipc_node_is_up (struct tipc_node*) ;
 int tipc_node_lock (struct tipc_node*) ;
 int tipc_node_unlock (struct tipc_node*) ;
 scalar_t__ tipc_own_addr ;
 int tipc_port_recv_mcast (struct sk_buff*,int *) ;
 scalar_t__ unlikely (int) ;

void tipc_bclink_recv_pkt(struct sk_buff *buf)
{



 struct tipc_msg *msg = buf_msg(buf);
 struct tipc_node* node = tipc_node_find(msg_prevnode(msg));
 u32 next_in;
 u32 seqno;
 struct sk_buff *deferred;

 msg_dbg(msg, "<BC<<<");

 if (unlikely(!node || !tipc_node_is_up(node) || !node->bclink.supported ||
       (msg_mc_netid(msg) != tipc_net_id))) {
  buf_discard(buf);
  return;
 }

 if (unlikely(msg_user(msg) == BCAST_PROTOCOL)) {
  msg_dbg(msg, "<BCNACK<<<");
  if (msg_destnode(msg) == tipc_own_addr) {
   tipc_node_lock(node);
   tipc_bclink_acknowledge(node, msg_bcast_ack(msg));
   tipc_node_unlock(node);
   spin_lock_bh(&bc_lock);
   bcl->stats.recv_nacks++;
   bcl->owner->next = node;
   bclink_retransmit_pkt(msg_bcgap_after(msg),
           msg_bcgap_to(msg));
   bcl->owner->next = ((void*)0);
   spin_unlock_bh(&bc_lock);
  } else {
   tipc_bclink_peek_nack(msg_destnode(msg),
           msg_bcast_tag(msg),
           msg_bcgap_after(msg),
           msg_bcgap_to(msg));
  }
  buf_discard(buf);
  return;
 }
 tipc_node_lock(node);
receive:
 deferred = node->bclink.deferred_head;
 next_in = mod(node->bclink.last_in + 1);
 seqno = msg_seqno(msg);

 if (likely(seqno == next_in)) {
  bcl->stats.recv_info++;
  node->bclink.last_in++;
  bclink_set_gap(node);
  if (unlikely(bclink_ack_allowed(seqno))) {
   bclink_send_ack(node);
   bcl->stats.sent_acks++;
  }
  if (likely(msg_isdata(msg))) {
   tipc_node_unlock(node);
   tipc_port_recv_mcast(buf, ((void*)0));
  } else if (msg_user(msg) == MSG_BUNDLER) {
   bcl->stats.recv_bundles++;
   bcl->stats.recv_bundled += msg_msgcnt(msg);
   tipc_node_unlock(node);
   tipc_link_recv_bundle(buf);
  } else if (msg_user(msg) == MSG_FRAGMENTER) {
   bcl->stats.recv_fragments++;
   if (tipc_link_recv_fragment(&node->bclink.defragm,
          &buf, &msg))
    bcl->stats.recv_fragmented++;
   tipc_node_unlock(node);
   tipc_net_route_msg(buf);
  } else {
   tipc_node_unlock(node);
   tipc_net_route_msg(buf);
  }
  if (deferred && (buf_seqno(deferred) == mod(next_in + 1))) {
   tipc_node_lock(node);
   buf = deferred;
   msg = buf_msg(buf);
   node->bclink.deferred_head = deferred->next;
   goto receive;
  }
  return;
 } else if (less(next_in, seqno)) {
  u32 gap_after = node->bclink.gap_after;
  u32 gap_to = node->bclink.gap_to;

  if (tipc_link_defer_pkt(&node->bclink.deferred_head,
     &node->bclink.deferred_tail,
     buf)) {
   node->bclink.nack_sync++;
   bcl->stats.deferred_recv++;
   if (seqno == mod(gap_after + 1))
    node->bclink.gap_after = seqno;
   else if (less(gap_after, seqno) && less(seqno, gap_to))
    node->bclink.gap_to = seqno;
  }
  if (bclink_ack_allowed(node->bclink.nack_sync)) {
   if (gap_to != gap_after)
    bclink_send_nack(node);
   bclink_set_gap(node);
  }
 } else {
  bcl->stats.duplicates++;
  buf_discard(buf);
 }
 tipc_node_unlock(node);
}
