
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {TYPE_1__* nf_bridge; } ;
typedef enum ip_defrag_users { ____Placeholder_ip_defrag_users } ip_defrag_users ;
struct TYPE_2__ {int mask; } ;


 int BRNF_NF_BRIDGE_PREROUTING ;
 int IP_DEFRAG_CONNTRACK_BRIDGE_IN ;
 int IP_DEFRAG_CONNTRACK_IN ;
 int IP_DEFRAG_CONNTRACK_OUT ;
 unsigned int NF_INET_PRE_ROUTING ;

__attribute__((used)) static enum ip_defrag_users nf_ct_defrag_user(unsigned int hooknum,
           struct sk_buff *skb)
{





 if (hooknum == NF_INET_PRE_ROUTING)
  return IP_DEFRAG_CONNTRACK_IN;
 else
  return IP_DEFRAG_CONNTRACK_OUT;
}
