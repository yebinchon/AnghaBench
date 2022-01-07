
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct irlan_cb {int dummy; } ;


 int CMD_OPEN_DATA_CHANNEL ;
 int irlan_open_data_tsap (struct irlan_cb*) ;
 int irlan_provider_parse_command (struct irlan_cb*,int ,struct sk_buff*) ;

int irlan_parse_open_data_cmd(struct irlan_cb *self, struct sk_buff *skb)
{
 int ret;

 ret = irlan_provider_parse_command(self, CMD_OPEN_DATA_CHANNEL, skb);


 irlan_open_data_tsap(self);

 return ret;
}
