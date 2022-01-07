
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct tipc_msg {int dummy; } ;
struct sk_buff {int dummy; } ;
struct link {TYPE_1__* b_ptr; TYPE_2__* owner; } ;
struct TYPE_4__ {struct link** active_links; } ;
struct TYPE_3__ {int net_plane; } ;


 int INT_H_SIZE ;
 struct sk_buff* buf_acquire (int) ;
 int buf_msg (struct sk_buff*) ;
 int dbg (char*,int ,int ) ;
 int msg_dbg (int ,char*) ;
 int msg_set_size (struct tipc_msg*,int) ;
 int msg_size (struct tipc_msg*) ;
 int skb_copy_to_linear_data (struct sk_buff*,struct tipc_msg*,int) ;
 int skb_copy_to_linear_data_offset (struct sk_buff*,int,struct tipc_msg*,int) ;
 int tipc_link_is_up (struct link*) ;
 int tipc_link_send_buf (struct link*,struct sk_buff*) ;
 int warn (char*) ;

void tipc_link_tunnel(struct link *l_ptr,
        struct tipc_msg *tunnel_hdr,
        struct tipc_msg *msg,
        u32 selector)
{
 struct link *tunnel;
 struct sk_buff *buf;
 u32 length = msg_size(msg);

 tunnel = l_ptr->owner->active_links[selector & 1];
 if (!tipc_link_is_up(tunnel)) {
  warn("Link changeover error, "
       "tunnel link no longer available\n");
  return;
 }
 msg_set_size(tunnel_hdr, length + INT_H_SIZE);
 buf = buf_acquire(length + INT_H_SIZE);
 if (!buf) {
  warn("Link changeover error, "
       "unable to send tunnel msg\n");
  return;
 }
 skb_copy_to_linear_data(buf, tunnel_hdr, INT_H_SIZE);
 skb_copy_to_linear_data_offset(buf, INT_H_SIZE, msg, length);
 dbg("%c->%c:", l_ptr->b_ptr->net_plane, tunnel->b_ptr->net_plane);
 msg_dbg(buf_msg(buf), ">SEND>");
 tipc_link_send_buf(tunnel, buf);
}
