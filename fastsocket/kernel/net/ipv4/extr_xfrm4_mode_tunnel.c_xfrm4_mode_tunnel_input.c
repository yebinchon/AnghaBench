
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; } ;
struct xfrm_state {TYPE_1__ props; } ;
struct sk_buff {int mac_len; } ;
struct iphdr {int dummy; } ;
struct TYPE_4__ {scalar_t__ protocol; int tos; } ;


 int EINVAL ;
 int GFP_ATOMIC ;
 scalar_t__ IPPROTO_IPIP ;
 TYPE_2__* XFRM_MODE_SKB_CB (struct sk_buff*) ;
 int XFRM_STATE_DECAP_DSCP ;
 int XFRM_STATE_NOECN ;
 int ipip_ecn_decapsulate (struct sk_buff*) ;
 int ipip_hdr (struct sk_buff*) ;
 int ipv4_copy_dscp (int ,int ) ;
 int memmove (unsigned char*,unsigned char const*,int ) ;
 int pskb_may_pull (struct sk_buff*,int) ;
 unsigned char* skb_mac_header (struct sk_buff*) ;
 int skb_reset_network_header (struct sk_buff*) ;
 int skb_set_mac_header (struct sk_buff*,int ) ;
 int skb_unclone (struct sk_buff*,int ) ;

__attribute__((used)) static int xfrm4_mode_tunnel_input(struct xfrm_state *x, struct sk_buff *skb)
{
 const unsigned char *old_mac;
 int err = -EINVAL;

 if (XFRM_MODE_SKB_CB(skb)->protocol != IPPROTO_IPIP)
  goto out;

 if (!pskb_may_pull(skb, sizeof(struct iphdr)))
  goto out;

 err = skb_unclone(skb, GFP_ATOMIC);
 if (err)
  goto out;

 if (x->props.flags & XFRM_STATE_DECAP_DSCP)
  ipv4_copy_dscp(XFRM_MODE_SKB_CB(skb)->tos, ipip_hdr(skb));
 if (!(x->props.flags & XFRM_STATE_NOECN))
  ipip_ecn_decapsulate(skb);

 old_mac = skb_mac_header(skb);
 skb_set_mac_header(skb, -skb->mac_len);
 memmove(skb_mac_header(skb), old_mac, skb->mac_len);
 skb_reset_network_header(skb);
 err = 0;

out:
 return err;
}
