
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {struct net_device* dev; void* protocol; } ;
struct net_device {int hard_header_len; unsigned char* dev_addr; } ;
struct elapaarp {int pa_dst_node; int pa_dst_net; scalar_t__ pa_dst_zero; int hw_dst; int pa_src_node; int pa_src_net; scalar_t__ pa_src_zero; int hw_src; void* function; int pa_len; int hw_len; void* pa_type; void* hw_type; } ;
struct atalk_addr {int s_node; int s_net; } ;
struct TYPE_3__ {int header_length; int (* request ) (TYPE_1__*,struct sk_buff*,unsigned char*) ;} ;


 int AARP_HW_TYPE_ETHERNET ;
 int AARP_PA_ALEN ;
 int AARP_REPLY ;
 int ETH_ALEN ;
 int ETH_P_ATALK ;
 int GFP_ATOMIC ;
 TYPE_1__* aarp_dl ;
 struct elapaarp* aarp_hdr (struct sk_buff*) ;
 struct sk_buff* alloc_skb (int,int ) ;
 void* htons (int ) ;
 int memcpy (int ,unsigned char*,int ) ;
 int memset (int ,char,int ) ;
 int skb_put (struct sk_buff*,int) ;
 int skb_reserve (struct sk_buff*,int) ;
 int skb_reset_network_header (struct sk_buff*) ;
 int skb_reset_transport_header (struct sk_buff*) ;
 int stub1 (TYPE_1__*,struct sk_buff*,unsigned char*) ;

__attribute__((used)) static void aarp_send_reply(struct net_device *dev, struct atalk_addr *us,
       struct atalk_addr *them, unsigned char *sha)
{
 struct elapaarp *eah;
 int len = dev->hard_header_len + sizeof(*eah) + aarp_dl->header_length;
 struct sk_buff *skb = alloc_skb(len, GFP_ATOMIC);

 if (!skb)
  return;


 skb_reserve(skb, dev->hard_header_len + aarp_dl->header_length);
 skb_reset_network_header(skb);
 skb_reset_transport_header(skb);
 skb_put(skb, sizeof(*eah));
 skb->protocol = htons(ETH_P_ATALK);
 skb->dev = dev;
 eah = aarp_hdr(skb);


 eah->hw_type = htons(AARP_HW_TYPE_ETHERNET);
 eah->pa_type = htons(ETH_P_ATALK);
 eah->hw_len = ETH_ALEN;
 eah->pa_len = AARP_PA_ALEN;
 eah->function = htons(AARP_REPLY);

 memcpy(eah->hw_src, dev->dev_addr, ETH_ALEN);

 eah->pa_src_zero = 0;
 eah->pa_src_net = us->s_net;
 eah->pa_src_node = us->s_node;

 if (!sha)
  memset(eah->hw_dst, '\0', ETH_ALEN);
 else
  memcpy(eah->hw_dst, sha, ETH_ALEN);

 eah->pa_dst_zero = 0;
 eah->pa_dst_net = them->s_net;
 eah->pa_dst_node = them->s_node;


 aarp_dl->request(aarp_dl, skb, sha);
}
