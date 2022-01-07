
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct dn_skb_cb {int dst_port; int src_port; } ;
typedef int gfp_t ;


 struct dn_skb_cb* DN_SKB_CB (struct sk_buff*) ;
 int GFP_ATOMIC ;
 int dn_nsp_do_disc (int *,unsigned char,unsigned short,int ,int ,int,int *,int ,int ) ;
 int skb_dst (struct sk_buff*) ;

void dn_nsp_return_disc(struct sk_buff *skb, unsigned char msgflg,
   unsigned short reason)
{
 struct dn_skb_cb *cb = DN_SKB_CB(skb);
 int ddl = 0;
 gfp_t gfp = GFP_ATOMIC;

 dn_nsp_do_disc(((void*)0), msgflg, reason, gfp, skb_dst(skb), ddl,
   ((void*)0), cb->src_port, cb->dst_port);
}
