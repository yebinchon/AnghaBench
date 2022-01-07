
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_bearer_config {int priority; int detect_scope; int name; } ;
struct sk_buff {int dummy; } ;


 char* TIPC_CFG_TLV_ERROR ;
 int TIPC_TLV_BEARER_CONFIG ;
 int TLV_CHECK (int ,int ,int ) ;
 scalar_t__ TLV_DATA (int ) ;
 int ntohl (int ) ;
 int req_tlv_area ;
 int req_tlv_space ;
 struct sk_buff* tipc_cfg_reply_error_string (char*) ;
 struct sk_buff* tipc_cfg_reply_none () ;
 scalar_t__ tipc_enable_bearer (int ,int ,int ) ;

__attribute__((used)) static struct sk_buff *cfg_enable_bearer(void)
{
 struct tipc_bearer_config *args;

 if (!TLV_CHECK(req_tlv_area, req_tlv_space, TIPC_TLV_BEARER_CONFIG))
  return tipc_cfg_reply_error_string(TIPC_CFG_TLV_ERROR);

 args = (struct tipc_bearer_config *)TLV_DATA(req_tlv_area);
 if (tipc_enable_bearer(args->name,
          ntohl(args->detect_scope),
          ntohl(args->priority)))
  return tipc_cfg_reply_error_string("unable to enable bearer");

 return tipc_cfg_reply_none();
}
