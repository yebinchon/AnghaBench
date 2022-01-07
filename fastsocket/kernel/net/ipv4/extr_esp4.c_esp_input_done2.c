
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ a4; } ;
typedef TYPE_3__ xfrm_address_t ;
typedef int u8 ;
struct TYPE_6__ {scalar_t__ a4; } ;
struct TYPE_7__ {scalar_t__ mode; TYPE_1__ saddr; } ;
struct xfrm_state {TYPE_2__ props; struct xfrm_encap_tmpl* encap; struct esp_data* data; } ;
struct xfrm_encap_tmpl {scalar_t__ encap_sport; } ;
struct udphdr {scalar_t__ source; } ;
struct sk_buff {int len; int ip_summed; } ;
struct iphdr {int ihl; scalar_t__ saddr; } ;
struct ip_esp_hdr {int dummy; } ;
struct esp_data {struct crypto_aead* aead; } ;
struct crypto_aead {int dummy; } ;
struct TYPE_9__ {int tmp; } ;


 int BUG () ;
 int CHECKSUM_UNNECESSARY ;
 int EINVAL ;
 TYPE_5__* ESP_SKB_CB (struct sk_buff*) ;
 int IPPROTO_NONE ;
 scalar_t__ XFRM_MODE_TRANSPORT ;
 int __skb_pull (struct sk_buff*,int) ;
 int crypto_aead_authsize (struct crypto_aead*) ;
 int crypto_aead_ivsize (struct crypto_aead*) ;
 struct iphdr* ip_hdr (struct sk_buff*) ;
 int kfree (int ) ;
 int km_new_mapping (struct xfrm_state*,TYPE_3__*,scalar_t__) ;
 int pskb_trim (struct sk_buff*,int) ;
 scalar_t__ skb_copy_bits (struct sk_buff*,int,int*,int) ;
 scalar_t__ skb_network_header (struct sk_buff*) ;
 int skb_set_transport_header (struct sk_buff*,int) ;
 scalar_t__ unlikely (int) ;
 struct xfrm_state* xfrm_input_state (struct sk_buff*) ;

__attribute__((used)) static int esp_input_done2(struct sk_buff *skb, int err)
{
 struct iphdr *iph;
 struct xfrm_state *x = xfrm_input_state(skb);
 struct esp_data *esp = x->data;
 struct crypto_aead *aead = esp->aead;
 int alen = crypto_aead_authsize(aead);
 int hlen = sizeof(struct ip_esp_hdr) + crypto_aead_ivsize(aead);
 int elen = skb->len - hlen;
 int ihl;
 u8 nexthdr[2];
 int padlen;

 kfree(ESP_SKB_CB(skb)->tmp);

 if (unlikely(err))
  goto out;

 if (skb_copy_bits(skb, skb->len-alen-2, nexthdr, 2))
  BUG();

 err = -EINVAL;
 padlen = nexthdr[0];
 if (padlen + 2 + alen >= elen)
  goto out;



 iph = ip_hdr(skb);
 ihl = iph->ihl * 4;

 if (x->encap) {
  struct xfrm_encap_tmpl *encap = x->encap;
  struct udphdr *uh = (void *)(skb_network_header(skb) + ihl);







  if (iph->saddr != x->props.saddr.a4 ||
      uh->source != encap->encap_sport) {
   xfrm_address_t ipaddr;

   ipaddr.a4 = iph->saddr;
   km_new_mapping(x, &ipaddr, uh->source);
  }
  if (x->props.mode == XFRM_MODE_TRANSPORT)
   skb->ip_summed = CHECKSUM_UNNECESSARY;
 }

 pskb_trim(skb, skb->len - alen - padlen - 2);
 __skb_pull(skb, hlen);
 skb_set_transport_header(skb, -ihl);

 err = nexthdr[1];


 if (err == IPPROTO_NONE)
  err = -EINVAL;

out:
 return err;
}
