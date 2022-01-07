
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct sk_buff {int dummy; } ;
typedef int __be32 ;


 int TIPC_CFG_TLV_ERROR ;
 int TIPC_TLV_UNSIGNED ;
 int TLV_CHECK (int ,int ,int ) ;
 scalar_t__ TLV_DATA (int ) ;
 scalar_t__ ntohl (int ) ;
 int req_tlv_area ;
 int req_tlv_space ;
 struct sk_buff* tipc_cfg_reply_error_string (int ) ;
 struct sk_buff* tipc_cfg_reply_none () ;
 int tipc_remote_management ;

__attribute__((used)) static struct sk_buff *cfg_set_remote_mng(void)
{
 u32 value;

 if (!TLV_CHECK(req_tlv_area, req_tlv_space, TIPC_TLV_UNSIGNED))
  return tipc_cfg_reply_error_string(TIPC_CFG_TLV_ERROR);

 value = ntohl(*(__be32 *)TLV_DATA(req_tlv_area));
 tipc_remote_management = (value != 0);
 return tipc_cfg_reply_none();
}
