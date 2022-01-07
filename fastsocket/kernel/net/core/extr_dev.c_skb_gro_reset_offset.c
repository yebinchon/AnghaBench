
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {scalar_t__ mac_header; scalar_t__ tail; } ;
struct TYPE_6__ {scalar_t__ frag0_len; int * frag0; scalar_t__ data_offset; } ;
struct TYPE_5__ {TYPE_1__* frags; } ;
struct TYPE_4__ {int page_offset; scalar_t__ size; int page; } ;


 TYPE_3__* NAPI_GRO_CB (struct sk_buff*) ;
 int PageHighMem (int ) ;
 int * page_address (int ) ;
 TYPE_2__* skb_shinfo (struct sk_buff*) ;

void skb_gro_reset_offset(struct sk_buff *skb)
{
 NAPI_GRO_CB(skb)->data_offset = 0;
 NAPI_GRO_CB(skb)->frag0 = ((void*)0);
 NAPI_GRO_CB(skb)->frag0_len = 0;

 if (skb->mac_header == skb->tail &&
     !PageHighMem(skb_shinfo(skb)->frags[0].page)) {
  NAPI_GRO_CB(skb)->frag0 =
   page_address(skb_shinfo(skb)->frags[0].page) +
   skb_shinfo(skb)->frags[0].page_offset;
  NAPI_GRO_CB(skb)->frag0_len = skb_shinfo(skb)->frags[0].size;
 }
}
