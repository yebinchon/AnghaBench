
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int value_net ;
typedef int value ;
typedef int u32 ;
typedef int u16 ;
struct sk_buff {int dummy; } ;
typedef int __be32 ;


 int TLV_SPACE (int) ;
 int htonl (int ) ;
 int tipc_cfg_append_tlv (struct sk_buff*,int ,int *,int) ;
 struct sk_buff* tipc_cfg_reply_alloc (int ) ;

struct sk_buff *tipc_cfg_reply_unsigned_type(u16 tlv_type, u32 value)
{
 struct sk_buff *buf;
 __be32 value_net;

 buf = tipc_cfg_reply_alloc(TLV_SPACE(sizeof(value)));
 if (buf) {
  value_net = htonl(value);
  tipc_cfg_append_tlv(buf, tlv_type, &value_net,
        sizeof(value_net));
 }
 return buf;
}
