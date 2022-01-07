
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct l2cap_conn {int info_state; scalar_t__ info_ident; int info_timer; } ;
struct l2cap_cmd_rej {int reason; } ;
struct l2cap_cmd_hdr {scalar_t__ ident; } ;


 int L2CAP_INFO_FEAT_MASK_REQ_DONE ;
 int L2CAP_INFO_FEAT_MASK_REQ_SENT ;
 int del_timer (int *) ;
 int l2cap_conn_start (struct l2cap_conn*) ;

__attribute__((used)) static inline int l2cap_command_rej(struct l2cap_conn *conn, struct l2cap_cmd_hdr *cmd, u8 *data)
{
 struct l2cap_cmd_rej *rej = (struct l2cap_cmd_rej *) data;

 if (rej->reason != 0x0000)
  return 0;

 if ((conn->info_state & L2CAP_INFO_FEAT_MASK_REQ_SENT) &&
     cmd->ident == conn->info_ident) {
  del_timer(&conn->info_timer);

  conn->info_state |= L2CAP_INFO_FEAT_MASK_REQ_DONE;
  conn->info_ident = 0;

  l2cap_conn_start(conn);
 }

 return 0;
}
