
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct iphdr {int dummy; } ;
struct ip_options {scalar_t__ cipso; int is_changed; } ;
struct TYPE_2__ {struct ip_options opt; } ;


 TYPE_1__* IPCB (struct sk_buff*) ;
 int IPOPT_NOOP ;
 struct iphdr* ip_hdr (struct sk_buff*) ;
 int ip_send_check (struct iphdr*) ;
 int memset (unsigned char*,int ,unsigned char) ;
 int skb_cow (struct sk_buff*,int ) ;
 int skb_headroom (struct sk_buff*) ;

int cipso_v4_skbuff_delattr(struct sk_buff *skb)
{
 int ret_val;
 struct iphdr *iph;
 struct ip_options *opt = &IPCB(skb)->opt;
 unsigned char *cipso_ptr;

 if (opt->cipso == 0)
  return 0;


 ret_val = skb_cow(skb, skb_headroom(skb));
 if (ret_val < 0)
  return ret_val;





 iph = ip_hdr(skb);
 cipso_ptr = (unsigned char *)iph + opt->cipso;
 memset(cipso_ptr, IPOPT_NOOP, cipso_ptr[1]);
 opt->cipso = 0;
 opt->is_changed = 1;

 ip_send_check(iph);

 return 0;
}
