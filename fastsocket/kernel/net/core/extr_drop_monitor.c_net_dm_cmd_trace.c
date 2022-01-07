
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct genl_info {TYPE_1__* genlhdr; } ;
struct TYPE_2__ {int cmd; } ;


 int ENOTSUPP ;


 int TRACE_OFF ;
 int TRACE_ON ;
 int set_all_monitor_traces (int ) ;

__attribute__((used)) static int net_dm_cmd_trace(struct sk_buff *skb,
   struct genl_info *info)
{
 switch (info->genlhdr->cmd) {
 case 129:
  return set_all_monitor_traces(TRACE_ON);
  break;
 case 128:
  return set_all_monitor_traces(TRACE_OFF);
  break;
 }

 return -ENOTSUPP;
}
