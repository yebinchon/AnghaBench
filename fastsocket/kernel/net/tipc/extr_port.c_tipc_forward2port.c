
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tipc_portid {int node; int ref; } ;
struct tipc_msg {int dummy; } ;
struct TYPE_2__ {struct tipc_msg phdr; scalar_t__ connected; } ;
struct port {int sent; TYPE_1__ publ; } ;
struct iovec {int dummy; } ;


 int DIR_MSG_H_SIZE ;
 int EINVAL ;
 int ELINKCONG ;
 unsigned int TIPC_CRITICAL_IMPORTANCE ;
 int TIPC_DIRECT_MSG ;
 scalar_t__ likely (int) ;
 int msg_calc_data_size (struct iovec const*,unsigned int) ;
 int msg_set_destnode (struct tipc_msg*,int ) ;
 int msg_set_destport (struct tipc_msg*,int ) ;
 int msg_set_hdr_sz (struct tipc_msg*,int ) ;
 int msg_set_importance (struct tipc_msg*,unsigned int) ;
 int msg_set_orignode (struct tipc_msg*,int ) ;
 int msg_set_origport (struct tipc_msg*,int ) ;
 int msg_set_type (struct tipc_msg*,int ) ;
 scalar_t__ port_unreliable (struct port*) ;
 int tipc_link_send_sections_fast (struct port*,struct iovec const*,unsigned int,int ) ;
 int tipc_own_addr ;
 struct port* tipc_port_deref (int ) ;
 int tipc_port_recv_sections (struct port*,unsigned int,struct iovec const*) ;

int tipc_forward2port(u32 ref,
        struct tipc_portid const *dest,
        unsigned int num_sect,
        struct iovec const *msg_sect,
        struct tipc_portid const *orig,
        unsigned int importance)
{
 struct port *p_ptr;
 struct tipc_msg *msg;
 int res;

 p_ptr = tipc_port_deref(ref);
 if (!p_ptr || p_ptr->publ.connected)
  return -EINVAL;

 msg = &p_ptr->publ.phdr;
 msg_set_type(msg, TIPC_DIRECT_MSG);
 msg_set_orignode(msg, orig->node);
 msg_set_origport(msg, orig->ref);
 msg_set_destnode(msg, dest->node);
 msg_set_destport(msg, dest->ref);
 msg_set_hdr_sz(msg, DIR_MSG_H_SIZE);
 if (importance <= TIPC_CRITICAL_IMPORTANCE)
  msg_set_importance(msg, importance);
 p_ptr->sent++;
 if (dest->node == tipc_own_addr)
  return tipc_port_recv_sections(p_ptr, num_sect, msg_sect);
 res = tipc_link_send_sections_fast(p_ptr, msg_sect, num_sect, dest->node);
 if (likely(res != -ELINKCONG))
  return res;
 if (port_unreliable(p_ptr)) {

  return msg_calc_data_size(msg_sect, num_sect);
 }
 return -ELINKCONG;
}
