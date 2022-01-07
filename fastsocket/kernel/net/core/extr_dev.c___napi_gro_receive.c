
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {TYPE_1__* dev; struct sk_buff* next; } ;
struct napi_struct {struct sk_buff* gro_list; } ;
typedef int gro_result_t ;
struct TYPE_4__ {int same_flow; scalar_t__ flush; } ;
struct TYPE_3__ {unsigned int hard_header_len; } ;


 unsigned int ETH_HLEN ;
 TYPE_2__* NAPI_GRO_CB (struct sk_buff*) ;
 unsigned long compare_ether_header (int ,int ) ;
 int dev_gro_receive (struct napi_struct*,struct sk_buff*) ;
 unsigned long memcmp (int ,int ,unsigned int) ;
 int skb_gro_mac_header (struct sk_buff*) ;
 int skb_mac_header (struct sk_buff*) ;

__attribute__((used)) static gro_result_t
__napi_gro_receive(struct napi_struct *napi, struct sk_buff *skb)
{
 struct sk_buff *p;
 unsigned int maclen = skb->dev->hard_header_len;

 for (p = napi->gro_list; p; p = p->next) {
  unsigned long diffs;

  diffs = (unsigned long)p->dev ^ (unsigned long)skb->dev;
  if (maclen == ETH_HLEN)
   diffs |= compare_ether_header(skb_mac_header(p),
            skb_gro_mac_header(skb));
  else if (!diffs)
   diffs = memcmp(skb_mac_header(p),
           skb_gro_mac_header(skb),
           maclen);
  NAPI_GRO_CB(p)->same_flow = !diffs;
  NAPI_GRO_CB(p)->flush = 0;
 }

 return dev_gro_receive(napi, skb);
}
