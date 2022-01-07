
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {int congested; int connected; } ;
struct port {TYPE_1__ publ; int sent; } ;
struct iovec {int dummy; } ;


 int EINVAL ;
 int ELINKCONG ;
 scalar_t__ likely (int) ;
 int msg_calc_data_size (struct iovec const*,unsigned int) ;
 int port_incr_out_seqno (struct port*) ;
 scalar_t__ port_peernode (struct port*) ;
 scalar_t__ port_unreliable (struct port*) ;
 int tipc_link_send_sections_fast (struct port*,struct iovec const*,unsigned int,scalar_t__) ;
 scalar_t__ tipc_own_addr ;
 int tipc_port_congested (struct port*) ;
 struct port* tipc_port_deref (scalar_t__) ;
 int tipc_port_recv_sections (struct port*,unsigned int,struct iovec const*) ;

int tipc_send(u32 ref, unsigned int num_sect, struct iovec const *msg_sect)
{
 struct port *p_ptr;
 u32 destnode;
 int res;

 p_ptr = tipc_port_deref(ref);
 if (!p_ptr || !p_ptr->publ.connected)
  return -EINVAL;

 p_ptr->publ.congested = 1;
 if (!tipc_port_congested(p_ptr)) {
  destnode = port_peernode(p_ptr);
  if (likely(destnode != tipc_own_addr))
   res = tipc_link_send_sections_fast(p_ptr, msg_sect, num_sect,
          destnode);
  else
   res = tipc_port_recv_sections(p_ptr, num_sect, msg_sect);

  if (likely(res != -ELINKCONG)) {
   port_incr_out_seqno(p_ptr);
   p_ptr->publ.congested = 0;
   p_ptr->sent++;
   return res;
  }
 }
 if (port_unreliable(p_ptr)) {
  p_ptr->publ.congested = 0;

  return msg_calc_data_size(msg_sect, num_sect);
 }
 return -ELINKCONG;
}
