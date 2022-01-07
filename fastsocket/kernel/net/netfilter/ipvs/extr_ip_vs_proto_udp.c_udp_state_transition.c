
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct ip_vs_protocol {int * timeout_table; } ;
struct ip_vs_conn {int timeout; } ;


 size_t IP_VS_UDP_S_NORMAL ;

__attribute__((used)) static int
udp_state_transition(struct ip_vs_conn *cp, int direction,
       const struct sk_buff *skb,
       struct ip_vs_protocol *pp)
{
 cp->timeout = pp->timeout_table[IP_VS_UDP_S_NORMAL];
 return 1;
}
