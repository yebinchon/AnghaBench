
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct l2cap_pinfo {int conn_state; } ;


 int L2CAP_CONN_LOCAL_BUSY ;
 int L2CAP_SUPER_RCV_NOT_READY ;
 int L2CAP_SUPER_RCV_READY ;
 int l2cap_send_sframe (struct l2cap_pinfo*,int ) ;

__attribute__((used)) static inline int l2cap_send_rr_or_rnr(struct l2cap_pinfo *pi, u16 control)
{
 if (pi->conn_state & L2CAP_CONN_LOCAL_BUSY)
  control |= L2CAP_SUPER_RCV_NOT_READY;
 else
  control |= L2CAP_SUPER_RCV_READY;

 return l2cap_send_sframe(pi, control);
}
