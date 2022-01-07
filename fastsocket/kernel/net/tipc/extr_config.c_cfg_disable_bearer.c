
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 char* TIPC_CFG_TLV_ERROR ;
 int TIPC_TLV_BEARER_NAME ;
 int TLV_CHECK (int ,int ,int ) ;
 scalar_t__ TLV_DATA (int ) ;
 int req_tlv_area ;
 int req_tlv_space ;
 struct sk_buff* tipc_cfg_reply_error_string (char*) ;
 struct sk_buff* tipc_cfg_reply_none () ;
 scalar_t__ tipc_disable_bearer (char*) ;

__attribute__((used)) static struct sk_buff *cfg_disable_bearer(void)
{
 if (!TLV_CHECK(req_tlv_area, req_tlv_space, TIPC_TLV_BEARER_NAME))
  return tipc_cfg_reply_error_string(TIPC_CFG_TLV_ERROR);

 if (tipc_disable_bearer((char *)TLV_DATA(req_tlv_area)))
  return tipc_cfg_reply_error_string("unable to disable bearer");

 return tipc_cfg_reply_none();
}
