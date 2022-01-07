
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sk_buff {int dummy; } ;


 int TLV_SPACE (int) ;
 int strlen (char*) ;
 int tipc_cfg_append_tlv (struct sk_buff*,int ,char*,int) ;
 struct sk_buff* tipc_cfg_reply_alloc (int ) ;

struct sk_buff *tipc_cfg_reply_string_type(u16 tlv_type, char *string)
{
 struct sk_buff *buf;
 int string_len = strlen(string) + 1;

 buf = tipc_cfg_reply_alloc(TLV_SPACE(string_len));
 if (buf)
  tipc_cfg_append_tlv(buf, tlv_type, string, string_len);
 return buf;
}
