
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tipc_node {struct link** active_links; } ;
struct sk_buff {int dummy; } ;
struct link {int dummy; } ;


 int ELINKCONG ;
 int buf_discard (struct sk_buff*) ;
 int buf_msg (struct sk_buff*) ;
 int dbg (char*,...) ;
 int msg_dbg (int ,char*) ;
 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;
 int tipc_link_send_buf (struct link*,struct sk_buff*) ;
 int tipc_net_lock ;
 int tipc_node_lock (struct tipc_node*) ;
 struct tipc_node* tipc_node_select (int,int) ;
 int tipc_node_unlock (struct tipc_node*) ;

int tipc_link_send(struct sk_buff *buf, u32 dest, u32 selector)
{
 struct link *l_ptr;
 struct tipc_node *n_ptr;
 int res = -ELINKCONG;

 read_lock_bh(&tipc_net_lock);
 n_ptr = tipc_node_select(dest, selector);
 if (n_ptr) {
  tipc_node_lock(n_ptr);
  l_ptr = n_ptr->active_links[selector & 1];
  if (l_ptr) {
   dbg("tipc_link_send: found link %x for dest %x\n", l_ptr, dest);
   res = tipc_link_send_buf(l_ptr, buf);
  } else {
   dbg("Attempt to send msg to unreachable node:\n");
   msg_dbg(buf_msg(buf),">>>");
   buf_discard(buf);
  }
  tipc_node_unlock(n_ptr);
 } else {
  dbg("Attempt to send msg to unknown node:\n");
  msg_dbg(buf_msg(buf),">>>");
  buf_discard(buf);
 }
 read_unlock_bh(&tipc_net_lock);
 return res;
}
