
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nf_conn {int dummy; } ;



__attribute__((used)) static bool udp_new(struct nf_conn *ct, const struct sk_buff *skb,
      unsigned int dataoff)
{
 return 1;
}
