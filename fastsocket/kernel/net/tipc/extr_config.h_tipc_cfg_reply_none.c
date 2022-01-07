
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 struct sk_buff* tipc_cfg_reply_alloc (int ) ;

__attribute__((used)) static inline struct sk_buff *tipc_cfg_reply_none(void)
{
 return tipc_cfg_reply_alloc(0);
}
