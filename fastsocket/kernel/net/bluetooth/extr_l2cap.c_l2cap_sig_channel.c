
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct l2cap_cmd_rej {int reason; } ;
typedef struct l2cap_cmd_rej u8 ;
typedef int u16 ;
struct sk_buff {int len; struct l2cap_cmd_rej* data; } ;
struct l2cap_conn {int dummy; } ;
struct l2cap_cmd_hdr {int code; int ident; int len; } ;
typedef int rej ;


 int BT_DBG (char*,...) ;
 int BT_ERR (char*,int) ;
 int EINVAL ;
 int L2CAP_CMD_HDR_SIZE ;
 int cpu_to_le16 (int ) ;
 int kfree_skb (struct sk_buff*) ;
 int l2cap_command_rej (struct l2cap_conn*,struct l2cap_cmd_hdr*,struct l2cap_cmd_rej*) ;
 int l2cap_config_req (struct l2cap_conn*,struct l2cap_cmd_hdr*,int,struct l2cap_cmd_rej*) ;
 int l2cap_config_rsp (struct l2cap_conn*,struct l2cap_cmd_hdr*,struct l2cap_cmd_rej*) ;
 int l2cap_connect_req (struct l2cap_conn*,struct l2cap_cmd_hdr*,struct l2cap_cmd_rej*) ;
 int l2cap_connect_rsp (struct l2cap_conn*,struct l2cap_cmd_hdr*,struct l2cap_cmd_rej*) ;
 int l2cap_disconnect_req (struct l2cap_conn*,struct l2cap_cmd_hdr*,struct l2cap_cmd_rej*) ;
 int l2cap_disconnect_rsp (struct l2cap_conn*,struct l2cap_cmd_hdr*,struct l2cap_cmd_rej*) ;
 int l2cap_information_req (struct l2cap_conn*,struct l2cap_cmd_hdr*,struct l2cap_cmd_rej*) ;
 int l2cap_information_rsp (struct l2cap_conn*,struct l2cap_cmd_hdr*,struct l2cap_cmd_rej*) ;
 int l2cap_raw_recv (struct l2cap_conn*,struct sk_buff*) ;
 int l2cap_send_cmd (struct l2cap_conn*,int ,int const,int,struct l2cap_cmd_rej*) ;
 int le16_to_cpu (int ) ;
 int memcpy (struct l2cap_cmd_hdr*,struct l2cap_cmd_rej*,int) ;

__attribute__((used)) static inline void l2cap_sig_channel(struct l2cap_conn *conn, struct sk_buff *skb)
{
 u8 *data = skb->data;
 int len = skb->len;
 struct l2cap_cmd_hdr cmd;
 int err = 0;

 l2cap_raw_recv(conn, skb);

 while (len >= L2CAP_CMD_HDR_SIZE) {
  u16 cmd_len;
  memcpy(&cmd, data, L2CAP_CMD_HDR_SIZE);
  data += L2CAP_CMD_HDR_SIZE;
  len -= L2CAP_CMD_HDR_SIZE;

  cmd_len = le16_to_cpu(cmd.len);

  BT_DBG("code 0x%2.2x len %d id 0x%2.2x", cmd.code, cmd_len, cmd.ident);

  if (cmd_len > len || !cmd.ident) {
   BT_DBG("corrupted command");
   break;
  }

  switch (cmd.code) {
  case 138:
   l2cap_command_rej(conn, &cmd, data);
   break;

  case 135:
   err = l2cap_connect_req(conn, &cmd, data);
   break;

  case 134:
   err = l2cap_connect_rsp(conn, &cmd, data);
   break;

  case 137:
   err = l2cap_config_req(conn, &cmd, cmd_len, data);
   break;

  case 136:
   err = l2cap_config_rsp(conn, &cmd, data);
   break;

  case 133:
   err = l2cap_disconnect_req(conn, &cmd, data);
   break;

  case 132:
   err = l2cap_disconnect_rsp(conn, &cmd, data);
   break;

  case 131:
   l2cap_send_cmd(conn, cmd.ident, 130, cmd_len, data);
   break;

  case 130:
   break;

  case 129:
   err = l2cap_information_req(conn, &cmd, data);
   break;

  case 128:
   err = l2cap_information_rsp(conn, &cmd, data);
   break;

  default:
   BT_ERR("Unknown signaling command 0x%2.2x", cmd.code);
   err = -EINVAL;
   break;
  }

  if (err) {
   struct l2cap_cmd_rej rej;
   BT_DBG("error %d", err);


   rej.reason = cpu_to_le16(0);
   l2cap_send_cmd(conn, cmd.ident, 138, sizeof(rej), &rej);
  }

  data += cmd_len;
  len -= cmd_len;
 }

 kfree_skb(skb);
}
