
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int len; } ;
struct iphdr {int tot_len; } ;
struct TYPE_2__ {int dev; } ;


 int NF_INET_LOCAL_OUT ;
 int PF_INET ;
 int dst_output ;
 int htons (int ) ;
 struct iphdr* ip_hdr (struct sk_buff*) ;
 int ip_send_check (struct iphdr*) ;
 int nf_hook (int ,int ,struct sk_buff*,int *,int ,int ) ;
 TYPE_1__* skb_dst (struct sk_buff*) ;

int __ip_local_out(struct sk_buff *skb)
{
 struct iphdr *iph = ip_hdr(skb);

 iph->tot_len = htons(skb->len);
 ip_send_check(iph);
 return nf_hook(PF_INET, NF_INET_LOCAL_OUT, skb, ((void*)0), skb_dst(skb)->dev,
         dst_output);
}
