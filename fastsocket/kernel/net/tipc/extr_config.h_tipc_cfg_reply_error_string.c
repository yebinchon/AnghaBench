
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 int TIPC_TLV_ERROR_STRING ;
 struct sk_buff* tipc_cfg_reply_string_type (int ,char*) ;

__attribute__((used)) static inline struct sk_buff *tipc_cfg_reply_error_string(char *string)
{
 return tipc_cfg_reply_string_type(TIPC_TLV_ERROR_STRING, string);
}
