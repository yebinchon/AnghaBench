
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int dummy; } ;


 int TIPC_TLV_UNSIGNED ;
 struct sk_buff* tipc_cfg_reply_unsigned_type (int ,int ) ;

__attribute__((used)) static inline struct sk_buff *tipc_cfg_reply_unsigned(u32 value)
{
 return tipc_cfg_reply_unsigned_type(TIPC_TLV_UNSIGNED, value);
}
