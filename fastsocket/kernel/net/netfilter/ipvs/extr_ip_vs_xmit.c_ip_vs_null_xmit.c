
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct ip_vs_protocol {int dummy; } ;
struct ip_vs_conn {int dummy; } ;


 int NF_ACCEPT ;

int
ip_vs_null_xmit(struct sk_buff *skb, struct ip_vs_conn *cp,
  struct ip_vs_protocol *pp)
{

 return NF_ACCEPT;
}
