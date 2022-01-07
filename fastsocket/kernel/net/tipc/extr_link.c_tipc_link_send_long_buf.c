
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int unchar ;
typedef scalar_t__ u32 ;
struct tipc_msg {int dummy; } ;
struct sk_buff {int * data; } ;
struct TYPE_2__ {int sent_fragments; int sent_fragmented; } ;
struct link {scalar_t__ addr; TYPE_1__ stats; int long_msg_seq_no; } ;


 scalar_t__ ENOMEM ;
 int FIRST_FRAGMENT ;
 int FRAGMENT ;
 scalar_t__ INT_H_SIZE ;
 int LAST_FRAGMENT ;
 int MSG_FRAGMENTER ;
 struct sk_buff* buf_acquire (scalar_t__) ;
 int buf_discard (struct sk_buff*) ;
 struct tipc_msg* buf_msg (struct sk_buff*) ;
 scalar_t__ link_max_pkt (struct link*) ;
 int mod (int ) ;
 scalar_t__ msg_data_sz (struct tipc_msg*) ;
 scalar_t__ msg_destnode (struct tipc_msg*) ;
 int msg_init (struct tipc_msg*,int ,int ,scalar_t__,scalar_t__) ;
 int msg_link_selector (struct tipc_msg*) ;
 scalar_t__ msg_routed (struct tipc_msg*) ;
 int msg_set_fragm_no (struct tipc_msg*,scalar_t__) ;
 int msg_set_link_selector (struct tipc_msg*,int ) ;
 int msg_set_long_msgno (struct tipc_msg*,int ) ;
 int msg_set_prevnode (struct tipc_msg*,int ) ;
 int msg_set_size (struct tipc_msg*,scalar_t__) ;
 int msg_set_type (struct tipc_msg*,int ) ;
 scalar_t__ msg_short (struct tipc_msg*) ;
 scalar_t__ msg_size (struct tipc_msg*) ;
 int skb_copy_to_linear_data (struct sk_buff*,struct tipc_msg*,scalar_t__) ;
 int skb_copy_to_linear_data_offset (struct sk_buff*,scalar_t__,int *,scalar_t__) ;
 int tipc_link_is_up (struct link*) ;
 int tipc_link_send_buf (struct link*,struct sk_buff*) ;
 int tipc_own_addr ;
 int warn (char*) ;

int tipc_link_send_long_buf(struct link *l_ptr, struct sk_buff *buf)
{
 struct tipc_msg *inmsg = buf_msg(buf);
 struct tipc_msg fragm_hdr;
 u32 insize = msg_size(inmsg);
 u32 dsz = msg_data_sz(inmsg);
 unchar *crs = buf->data;
 u32 rest = insize;
 u32 pack_sz = link_max_pkt(l_ptr);
 u32 fragm_sz = pack_sz - INT_H_SIZE;
 u32 fragm_no = 1;
 u32 destaddr;

 if (msg_short(inmsg))
  destaddr = l_ptr->addr;
 else
  destaddr = msg_destnode(inmsg);

 if (msg_routed(inmsg))
  msg_set_prevnode(inmsg, tipc_own_addr);



 msg_init(&fragm_hdr, MSG_FRAGMENTER, FIRST_FRAGMENT,
   INT_H_SIZE, destaddr);
 msg_set_link_selector(&fragm_hdr, msg_link_selector(inmsg));
 msg_set_long_msgno(&fragm_hdr, mod(l_ptr->long_msg_seq_no++));
 msg_set_fragm_no(&fragm_hdr, fragm_no);
 l_ptr->stats.sent_fragmented++;



 while (rest > 0) {
  struct sk_buff *fragm;

  if (rest <= fragm_sz) {
   fragm_sz = rest;
   msg_set_type(&fragm_hdr, LAST_FRAGMENT);
  }
  fragm = buf_acquire(fragm_sz + INT_H_SIZE);
  if (fragm == ((void*)0)) {
   warn("Link unable to fragment message\n");
   dsz = -ENOMEM;
   goto exit;
  }
  msg_set_size(&fragm_hdr, fragm_sz + INT_H_SIZE);
  skb_copy_to_linear_data(fragm, &fragm_hdr, INT_H_SIZE);
  skb_copy_to_linear_data_offset(fragm, INT_H_SIZE, crs,
            fragm_sz);


  l_ptr->stats.sent_fragments++;
  tipc_link_send_buf(l_ptr, fragm);
  if (!tipc_link_is_up(l_ptr))
   return dsz;
  msg_set_fragm_no(&fragm_hdr, ++fragm_no);
  rest -= fragm_sz;
  crs += fragm_sz;
  msg_set_type(&fragm_hdr, FRAGMENT);
 }
exit:
 buf_discard(buf);
 return dsz;
}
