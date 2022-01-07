
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int (* tipc_named_msg_event ) (void*,int,struct sk_buff**,int ,int ,int ,struct tipc_portid*,struct tipc_name_seq*) ;
typedef int (* tipc_named_msg_err_event ) (void*,int,struct sk_buff**,int ,int ,int,struct tipc_name_seq*) ;
typedef int (* tipc_msg_event ) (void*,int,struct sk_buff**,int ,int ,int ,struct tipc_portid*) ;
typedef int (* tipc_msg_err_event ) (void*,int,struct sk_buff**,int ,int ,int,struct tipc_portid*) ;
typedef int (* tipc_conn_shutdown_event ) (void*,int,struct sk_buff**,int ,int ,int) ;
typedef int (* tipc_conn_msg_event ) (void*,int,struct sk_buff**,int ,int ) ;
struct user_port {int (* named_err_cb ) (void*,int,struct sk_buff**,int ,int ,int,struct tipc_name_seq*) ;int (* err_cb ) (void*,int,struct sk_buff**,int ,int ,int,struct tipc_portid*) ;int (* conn_err_cb ) (void*,int,struct sk_buff**,int ,int ,int) ;int (* named_msg_cb ) (void*,int,struct sk_buff**,int ,int ,int ,struct tipc_portid*,struct tipc_name_seq*) ;int (* msg_cb ) (void*,int,struct sk_buff**,int ,int ,int ,struct tipc_portid*) ;int (* conn_msg_cb ) (void*,int,struct sk_buff**,int ,int ) ;void* usr_handle; } ;
struct tipc_portid {int ref; int node; } ;
struct tipc_name_seq {void* lower; void* upper; void* type; } ;
struct tipc_msg {int dummy; } ;
struct sk_buff {struct sk_buff* next; } ;
struct TYPE_2__ {int connected; int published; int conn_unacked; } ;
struct port {TYPE_1__ publ; struct user_port* user_port; } ;




 int TIPC_ERR_NO_PORT ;
 int TIPC_FLOW_CONTROL_WIN ;


 int buf_discard (struct sk_buff*) ;
 struct tipc_msg* buf_msg (struct sk_buff*) ;
 int msg_data (struct tipc_msg*) ;
 int msg_data_sz (struct tipc_msg*) ;
 int msg_destport (struct tipc_msg*) ;
 int msg_errcode (struct tipc_msg*) ;
 int msg_hdr_sz (struct tipc_msg*) ;
 int msg_importance (struct tipc_msg*) ;
 void* msg_nameinst (struct tipc_msg*) ;
 void* msg_nametype (struct tipc_msg*) ;
 void* msg_nameupper (struct tipc_msg*) ;
 int msg_orignode (struct tipc_msg*) ;
 int msg_origport (struct tipc_msg*) ;
 struct sk_buff* msg_queue_head ;
 int msg_type (struct tipc_msg*) ;
 int port_peernode (struct port*) ;
 int port_peerport (struct port*) ;
 int queue_lock ;
 int skb_pull (struct sk_buff*,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int tipc_acknowledge (int,int ) ;
 int tipc_connect2port (int,struct tipc_portid*) ;
 int tipc_disconnect (int) ;
 struct port* tipc_port_lock (int) ;
 int tipc_port_unlock (struct port*) ;
 int tipc_reject_msg (struct sk_buff*,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void port_dispatcher_sigh(void *dummy)
{
 struct sk_buff *buf;

 spin_lock_bh(&queue_lock);
 buf = msg_queue_head;
 msg_queue_head = ((void*)0);
 spin_unlock_bh(&queue_lock);

 while (buf) {
  struct port *p_ptr;
  struct user_port *up_ptr;
  struct tipc_portid orig;
  struct tipc_name_seq dseq;
  void *usr_handle;
  int connected;
  int published;
  u32 message_type;

  struct sk_buff *next = buf->next;
  struct tipc_msg *msg = buf_msg(buf);
  u32 dref = msg_destport(msg);

  message_type = msg_type(msg);
  if (message_type > 130)
   goto reject;

  p_ptr = tipc_port_lock(dref);
  if (!p_ptr)
   goto reject;

  orig.ref = msg_origport(msg);
  orig.node = msg_orignode(msg);
  up_ptr = p_ptr->user_port;
  usr_handle = up_ptr->usr_handle;
  connected = p_ptr->publ.connected;
  published = p_ptr->publ.published;

  if (unlikely(msg_errcode(msg)))
   goto err;

  switch (message_type) {

  case 131:{
    tipc_conn_msg_event cb = up_ptr->conn_msg_cb;
    u32 peer_port = port_peerport(p_ptr);
    u32 peer_node = port_peernode(p_ptr);

    tipc_port_unlock(p_ptr);
    if (unlikely(!cb))
     goto reject;
    if (unlikely(!connected)) {
     if (tipc_connect2port(dref, &orig))
      goto reject;
    } else if ((msg_origport(msg) != peer_port) ||
        (msg_orignode(msg) != peer_node))
     goto reject;
    if (unlikely(++p_ptr->publ.conn_unacked >=
          TIPC_FLOW_CONTROL_WIN))
     tipc_acknowledge(dref,
        p_ptr->publ.conn_unacked);
    skb_pull(buf, msg_hdr_sz(msg));
    cb(usr_handle, dref, &buf, msg_data(msg),
       msg_data_sz(msg));
    break;
   }
  case 130:{
    tipc_msg_event cb = up_ptr->msg_cb;

    tipc_port_unlock(p_ptr);
    if (unlikely(!cb || connected))
     goto reject;
    skb_pull(buf, msg_hdr_sz(msg));
    cb(usr_handle, dref, &buf, msg_data(msg),
       msg_data_sz(msg), msg_importance(msg),
       &orig);
    break;
   }
  case 129:
  case 128:{
    tipc_named_msg_event cb = up_ptr->named_msg_cb;

    tipc_port_unlock(p_ptr);
    if (unlikely(!cb || connected || !published))
     goto reject;
    dseq.type = msg_nametype(msg);
    dseq.lower = msg_nameinst(msg);
    dseq.upper = (message_type == 128)
     ? dseq.lower : msg_nameupper(msg);
    skb_pull(buf, msg_hdr_sz(msg));
    cb(usr_handle, dref, &buf, msg_data(msg),
       msg_data_sz(msg), msg_importance(msg),
       &orig, &dseq);
    break;
   }
  }
  if (buf)
   buf_discard(buf);
  buf = next;
  continue;
err:
  switch (message_type) {

  case 131:{
    tipc_conn_shutdown_event cb =
     up_ptr->conn_err_cb;
    u32 peer_port = port_peerport(p_ptr);
    u32 peer_node = port_peernode(p_ptr);

    tipc_port_unlock(p_ptr);
    if (!cb || !connected)
     break;
    if ((msg_origport(msg) != peer_port) ||
        (msg_orignode(msg) != peer_node))
     break;
    tipc_disconnect(dref);
    skb_pull(buf, msg_hdr_sz(msg));
    cb(usr_handle, dref, &buf, msg_data(msg),
       msg_data_sz(msg), msg_errcode(msg));
    break;
   }
  case 130:{
    tipc_msg_err_event cb = up_ptr->err_cb;

    tipc_port_unlock(p_ptr);
    if (!cb || connected)
     break;
    skb_pull(buf, msg_hdr_sz(msg));
    cb(usr_handle, dref, &buf, msg_data(msg),
       msg_data_sz(msg), msg_errcode(msg), &orig);
    break;
   }
  case 129:
  case 128:{
    tipc_named_msg_err_event cb =
     up_ptr->named_err_cb;

    tipc_port_unlock(p_ptr);
    if (!cb || connected)
     break;
    dseq.type = msg_nametype(msg);
    dseq.lower = msg_nameinst(msg);
    dseq.upper = (message_type == 128)
     ? dseq.lower : msg_nameupper(msg);
    skb_pull(buf, msg_hdr_sz(msg));
    cb(usr_handle, dref, &buf, msg_data(msg),
       msg_data_sz(msg), msg_errcode(msg), &dseq);
    break;
   }
  }
  if (buf)
   buf_discard(buf);
  buf = next;
  continue;
reject:
  tipc_reject_msg(buf, TIPC_ERR_NO_PORT);
  buf = next;
 }
}
