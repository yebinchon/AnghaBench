
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct l2cap_info_rsp {void* result; void* type; int data; } ;
typedef struct l2cap_info_rsp u8 ;
typedef int u32 ;
typedef scalar_t__ u16 ;
struct l2cap_info_req {int type; } ;
struct l2cap_conn {int dummy; } ;
struct l2cap_cmd_hdr {int ident; } ;
typedef int rsp ;
typedef int buf ;


 int BT_DBG (char*,scalar_t__) ;
 int L2CAP_FEAT_ERTM ;
 int L2CAP_FEAT_FCS ;
 int L2CAP_FEAT_STREAMING ;
 int L2CAP_INFO_RSP ;
 scalar_t__ L2CAP_IR_NOTSUPP ;
 scalar_t__ L2CAP_IR_SUCCESS ;
 scalar_t__ L2CAP_IT_FEAT_MASK ;
 scalar_t__ L2CAP_IT_FIXED_CHAN ;
 scalar_t__ __le16_to_cpu (int ) ;
 void* cpu_to_le16 (scalar_t__) ;
 scalar_t__ enable_ertm ;
 int l2cap_feat_mask ;
 int l2cap_fixed_chan ;
 int l2cap_send_cmd (struct l2cap_conn*,int ,int ,int,struct l2cap_info_rsp*) ;
 int memcpy (struct l2cap_info_rsp*,int ,int) ;
 int put_unaligned_le32 (int,int ) ;

__attribute__((used)) static inline int l2cap_information_req(struct l2cap_conn *conn, struct l2cap_cmd_hdr *cmd, u8 *data)
{
 struct l2cap_info_req *req = (struct l2cap_info_req *) data;
 u16 type;

 type = __le16_to_cpu(req->type);

 BT_DBG("type 0x%4.4x", type);

 if (type == L2CAP_IT_FEAT_MASK) {
  u8 buf[8];
  u32 feat_mask = l2cap_feat_mask;
  struct l2cap_info_rsp *rsp = (struct l2cap_info_rsp *) buf;
  rsp->type = cpu_to_le16(L2CAP_IT_FEAT_MASK);
  rsp->result = cpu_to_le16(L2CAP_IR_SUCCESS);
  if (enable_ertm)
   feat_mask |= L2CAP_FEAT_ERTM | L2CAP_FEAT_STREAMING
        | L2CAP_FEAT_FCS;
  put_unaligned_le32(feat_mask, rsp->data);
  l2cap_send_cmd(conn, cmd->ident,
     L2CAP_INFO_RSP, sizeof(buf), buf);
 } else if (type == L2CAP_IT_FIXED_CHAN) {
  u8 buf[12];
  struct l2cap_info_rsp *rsp = (struct l2cap_info_rsp *) buf;
  rsp->type = cpu_to_le16(L2CAP_IT_FIXED_CHAN);
  rsp->result = cpu_to_le16(L2CAP_IR_SUCCESS);
  memcpy(buf + 4, l2cap_fixed_chan, 8);
  l2cap_send_cmd(conn, cmd->ident,
     L2CAP_INFO_RSP, sizeof(buf), buf);
 } else {
  struct l2cap_info_rsp rsp;
  rsp.type = cpu_to_le16(type);
  rsp.result = cpu_to_le16(L2CAP_IR_NOTSUPP);
  l2cap_send_cmd(conn, cmd->ident,
     L2CAP_INFO_RSP, sizeof(rsp), &rsp);
 }

 return 0;
}
