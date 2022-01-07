
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct tipc_portid {int ref; int node; } ;
struct tipc_name {int instance; int type; } ;
struct tipc_msg {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {struct tipc_msg phdr; scalar_t__ connected; } ;
struct port {int sent; TYPE_1__ publ; } ;


 int EINVAL ;
 int ELINKCONG ;
 int ENOMEM ;
 scalar_t__ LONG_H_SIZE ;
 unsigned int TIPC_CRITICAL_IMPORTANCE ;
 int TIPC_ERR_NO_NAME ;
 int TIPC_NAMED_MSG ;
 int addr_scope (scalar_t__) ;
 struct tipc_msg* buf_msg (struct sk_buff*) ;
 scalar_t__ likely (int) ;
 int msg_dbg (struct tipc_msg*,char*) ;
 int msg_set_destnode (struct tipc_msg*,scalar_t__) ;
 int msg_set_destport (struct tipc_msg*,scalar_t__) ;
 int msg_set_hdr_sz (struct tipc_msg*,scalar_t__) ;
 int msg_set_importance (struct tipc_msg*,unsigned int) ;
 int msg_set_lookup_scope (struct tipc_msg*,int ) ;
 int msg_set_nameinst (struct tipc_msg*,int ) ;
 int msg_set_nametype (struct tipc_msg*,int ) ;
 int msg_set_orignode (struct tipc_msg*,int ) ;
 int msg_set_origport (struct tipc_msg*,int ) ;
 int msg_set_size (struct tipc_msg*,scalar_t__) ;
 int msg_set_type (struct tipc_msg*,int ) ;
 scalar_t__ port_unreliable (struct port*) ;
 int skb_copy_to_linear_data (struct sk_buff*,struct tipc_msg*,scalar_t__) ;
 scalar_t__ skb_cow (struct sk_buff*,scalar_t__) ;
 int skb_push (struct sk_buff*,scalar_t__) ;
 scalar_t__ tipc_nametbl_translate (int ,int ,scalar_t__*) ;
 scalar_t__ tipc_own_addr ;
 int tipc_port_recv_msg (struct sk_buff*) ;
 scalar_t__ tipc_ref_deref (scalar_t__) ;
 int tipc_reject_msg (struct sk_buff*,int ) ;
 int tipc_send_buf_fast (struct sk_buff*,scalar_t__) ;

int tipc_forward_buf2name(u32 ref,
     struct tipc_name const *name,
     u32 domain,
     struct sk_buff *buf,
     unsigned int dsz,
     struct tipc_portid const *orig,
     unsigned int importance)
{
 struct port *p_ptr;
 struct tipc_msg *msg;
 u32 destnode = domain;
 u32 destport = 0;
 int res;

 p_ptr = (struct port *)tipc_ref_deref(ref);
 if (!p_ptr || p_ptr->publ.connected)
  return -EINVAL;

 msg = &p_ptr->publ.phdr;
 if (importance <= TIPC_CRITICAL_IMPORTANCE)
  msg_set_importance(msg, importance);
 msg_set_type(msg, TIPC_NAMED_MSG);
 msg_set_orignode(msg, orig->node);
 msg_set_origport(msg, orig->ref);
 msg_set_nametype(msg, name->type);
 msg_set_nameinst(msg, name->instance);
 msg_set_lookup_scope(msg, addr_scope(domain));
 msg_set_hdr_sz(msg, LONG_H_SIZE);
 msg_set_size(msg, LONG_H_SIZE + dsz);
 destport = tipc_nametbl_translate(name->type, name->instance, &destnode);
 msg_set_destnode(msg, destnode);
 msg_set_destport(msg, destport);
 msg_dbg(msg, "forw2name ==> ");
 if (skb_cow(buf, LONG_H_SIZE))
  return -ENOMEM;
 skb_push(buf, LONG_H_SIZE);
 skb_copy_to_linear_data(buf, msg, LONG_H_SIZE);
 msg_dbg(buf_msg(buf),"PREP:");
 if (likely(destport || destnode)) {
  p_ptr->sent++;
  if (destnode == tipc_own_addr)
   return tipc_port_recv_msg(buf);
  res = tipc_send_buf_fast(buf, destnode);
  if (likely(res != -ELINKCONG))
   return res;
  if (port_unreliable(p_ptr))
   return dsz;
  return -ELINKCONG;
 }
 return tipc_reject_msg(buf, TIPC_ERR_NO_NAME);
}
