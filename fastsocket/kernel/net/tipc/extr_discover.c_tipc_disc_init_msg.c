
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tipc_msg {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int addr; } ;
struct bearer {TYPE_1__ publ; } ;


 int DSC_H_SIZE ;
 int LINK_CONFIG ;
 struct sk_buff* buf_acquire (int ) ;
 struct tipc_msg* buf_msg (struct sk_buff*) ;
 int msg_init (struct tipc_msg*,int ,int ,int ,int ) ;
 int msg_set_bc_netid (struct tipc_msg*,int ) ;
 int msg_set_dest_domain (struct tipc_msg*,int ) ;
 int msg_set_media_addr (struct tipc_msg*,int *) ;
 int msg_set_non_seq (struct tipc_msg*,int) ;
 int msg_set_req_links (struct tipc_msg*,int ) ;
 int tipc_net_id ;

__attribute__((used)) static struct sk_buff *tipc_disc_init_msg(u32 type,
       u32 req_links,
       u32 dest_domain,
       struct bearer *b_ptr)
{
 struct sk_buff *buf = buf_acquire(DSC_H_SIZE);
 struct tipc_msg *msg;

 if (buf) {
  msg = buf_msg(buf);
  msg_init(msg, LINK_CONFIG, type, DSC_H_SIZE, dest_domain);
  msg_set_non_seq(msg, 1);
  msg_set_req_links(msg, req_links);
  msg_set_dest_domain(msg, dest_domain);
  msg_set_bc_netid(msg, tipc_net_id);
  msg_set_media_addr(msg, &b_ptr->publ.addr);
 }
 return buf;
}
