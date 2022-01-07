
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct tipc_node {TYPE_1__* b_ptr; struct tipc_node** active_links; } ;
struct tipc_msg {int dummy; } ;
struct sk_buff {TYPE_1__* b_ptr; struct sk_buff** active_links; } ;
struct TYPE_4__ {scalar_t__ max_pkt; int ref; struct tipc_msg phdr; } ;
struct port {TYPE_2__ publ; int user_port; } ;
struct link {TYPE_1__* b_ptr; struct link** active_links; } ;
struct iovec {int dummy; } ;
struct TYPE_3__ {int cong_links; } ;


 int TIPC_ERR_NO_NODE ;
 int buf_discard (struct tipc_node*) ;
 scalar_t__ likely (struct tipc_node*) ;
 scalar_t__ link_congested (struct tipc_node*) ;
 scalar_t__ link_max_pkt (struct tipc_node*) ;
 int link_schedule_port (struct tipc_node*,int ,int) ;
 int link_send_buf_fast (struct tipc_node*,struct tipc_node*,scalar_t__*) ;
 int link_send_sections_long (struct port*,struct iovec const*,size_t const,size_t) ;
 int list_empty (int *) ;
 int msg_build (struct tipc_msg*,struct iovec const*,size_t const,scalar_t__,int,struct tipc_node**) ;
 scalar_t__ msg_hdr_sz (struct tipc_msg*) ;
 int msg_origport (struct tipc_msg*) ;
 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;
 int tipc_net_lock ;
 int tipc_node_lock (struct tipc_node*) ;
 struct tipc_node* tipc_node_select (size_t,size_t) ;
 int tipc_node_unlock (struct tipc_node*) ;
 int tipc_port_reject_sections (struct port*,struct tipc_msg*,struct iovec const*,size_t const,int ) ;
 int tipc_reject_msg (struct tipc_node*,int ) ;
 scalar_t__ unlikely (int) ;

int tipc_link_send_sections_fast(struct port *sender,
     struct iovec const *msg_sect,
     const u32 num_sect,
     u32 destaddr)
{
 struct tipc_msg *hdr = &sender->publ.phdr;
 struct link *l_ptr;
 struct sk_buff *buf;
 struct tipc_node *node;
 int res;
 u32 selector = msg_origport(hdr) & 1;

again:





 res = msg_build(hdr, msg_sect, num_sect, sender->publ.max_pkt,
   !sender->user_port, &buf);

 read_lock_bh(&tipc_net_lock);
 node = tipc_node_select(destaddr, selector);
 if (likely(node)) {
  tipc_node_lock(node);
  l_ptr = node->active_links[selector];
  if (likely(l_ptr)) {
   if (likely(buf)) {
    res = link_send_buf_fast(l_ptr, buf,
        &sender->publ.max_pkt);
    if (unlikely(res < 0))
     buf_discard(buf);
exit:
    tipc_node_unlock(node);
    read_unlock_bh(&tipc_net_lock);
    return res;
   }



   if (unlikely(res < 0))
    goto exit;



   if (link_congested(l_ptr) ||
       !list_empty(&l_ptr->b_ptr->cong_links)) {
    res = link_schedule_port(l_ptr,
        sender->publ.ref, res);
    goto exit;
   }






   sender->publ.max_pkt = link_max_pkt(l_ptr);
   tipc_node_unlock(node);
   read_unlock_bh(&tipc_net_lock);


   if ((msg_hdr_sz(hdr) + res) <= sender->publ.max_pkt)
    goto again;

   return link_send_sections_long(sender, msg_sect,
             num_sect, destaddr);
  }
  tipc_node_unlock(node);
 }
 read_unlock_bh(&tipc_net_lock);



 if (buf)
  return tipc_reject_msg(buf, TIPC_ERR_NO_NODE);
 if (res >= 0)
  return tipc_port_reject_sections(sender, hdr, msg_sect, num_sect,
       TIPC_ERR_NO_NODE);
 return res;
}
