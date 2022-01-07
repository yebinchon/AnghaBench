
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct udphdr {scalar_t__ check; void* len; void* dest; void* source; } ;
struct timeval {int tv_usec; int tv_sec; } ;
struct sk_buff {int network_header; int tail; int transport_header; int mac_header; int len; int data_len; int pkt_type; struct net_device* dev; void* protocol; } ;
struct pktgen_hdr {void* tv_usec; void* tv_sec; void* seq_num; void* pgh_magic; } ;
struct pktgen_dev {int nr_labels; int vlan_id; int cur_pkt_size; int pkt_overhead; int svlan_id; int cur_udp_src; int cur_udp_dst; int ip_id; int nfrags; int seq_num; int cur_daddr; int cur_saddr; int tos; int hh; int vlan_p; int vlan_cfi; int svlan_p; int svlan_cfi; int result; int cur_queue_map; } ;
struct page {int dummy; } ;
struct net_device {int hard_header_len; } ;
struct iphdr {int ihl; int version; int ttl; scalar_t__ check; void* tot_len; scalar_t__ frag_off; void* id; int daddr; int saddr; int protocol; int tos; } ;
typedef int __u8 ;
typedef int __u32 ;
typedef int __be32 ;
typedef void* __be16 ;
struct TYPE_4__ {int nr_frags; TYPE_1__* frags; } ;
struct TYPE_3__ {int size; scalar_t__ page_offset; struct page* page; } ;


 int ETH_HLEN ;
 int ETH_P_8021Q ;
 int ETH_P_IP ;
 int ETH_P_MPLS_UC ;
 int GFP_KERNEL ;
 int GFP_NOWAIT ;
 int IPPROTO_UDP ;
 int MAX_SKB_FRAGS ;
 int PACKET_HOST ;
 int PAGE_SIZE ;
 int PKTGEN_MAGIC ;
 int __GFP_ZERO ;
 struct sk_buff* __netdev_alloc_skb (struct net_device*,int,int ) ;
 struct page* alloc_pages (int,int ) ;
 void* build_tci (int,int ,int ) ;
 int do_gettimeofday (struct timeval*) ;
 int get_page (struct page*) ;
 void* htonl (int ) ;
 void* htons (int) ;
 scalar_t__ ip_fast_csum (void*,int) ;
 struct iphdr* ip_hdr (struct sk_buff*) ;
 int memcpy (int *,int ,int) ;
 int memset (struct pktgen_hdr*,int ,int) ;
 int mod_cur_headers (struct pktgen_dev*) ;
 int mpls_push (int *,struct pktgen_dev*) ;
 int process_ipsec (struct pktgen_dev*,struct sk_buff*,void*) ;
 scalar_t__ skb_push (struct sk_buff*,int) ;
 struct pktgen_hdr* skb_put (struct sk_buff*,int) ;
 int skb_reserve (struct sk_buff*,int) ;
 int skb_set_queue_mapping (struct sk_buff*,int ) ;
 TYPE_2__* skb_shinfo (struct sk_buff*) ;
 int sprintf (int ,char*) ;
 struct udphdr* udp_hdr (struct sk_buff*) ;

__attribute__((used)) static struct sk_buff *fill_packet_ipv4(struct net_device *odev,
     struct pktgen_dev *pkt_dev)
{
 struct sk_buff *skb = ((void*)0);
 __u8 *eth;
 struct udphdr *udph;
 int datalen, iplen;
 struct iphdr *iph;
 struct pktgen_hdr *pgh = ((void*)0);
 __be16 protocol = htons(ETH_P_IP);
 __be32 *mpls;
 __be16 *vlan_tci = ((void*)0);
 __be16 *vlan_encapsulated_proto = ((void*)0);
 __be16 *svlan_tci = ((void*)0);
 __be16 *svlan_encapsulated_proto = ((void*)0);
 u16 queue_map;

 if (pkt_dev->nr_labels)
  protocol = htons(ETH_P_MPLS_UC);

 if (pkt_dev->vlan_id != 0xffff)
  protocol = htons(ETH_P_8021Q);




 queue_map = pkt_dev->cur_queue_map;
 mod_cur_headers(pkt_dev);

 datalen = (odev->hard_header_len + 16) & ~0xf;
 skb = __netdev_alloc_skb(odev,
     pkt_dev->cur_pkt_size + 64
     + datalen + pkt_dev->pkt_overhead, GFP_NOWAIT);
 if (!skb) {
  sprintf(pkt_dev->result, "No memory");
  return ((void*)0);
 }

 skb_reserve(skb, datalen);


 eth = (__u8 *) skb_push(skb, 14);
 mpls = (__be32 *)skb_put(skb, pkt_dev->nr_labels*sizeof(__u32));
 if (pkt_dev->nr_labels)
  mpls_push(mpls, pkt_dev);

 if (pkt_dev->vlan_id != 0xffff) {
  if (pkt_dev->svlan_id != 0xffff) {
   svlan_tci = (__be16 *)skb_put(skb, sizeof(__be16));
   *svlan_tci = build_tci(pkt_dev->svlan_id,
            pkt_dev->svlan_cfi,
            pkt_dev->svlan_p);
   svlan_encapsulated_proto = (__be16 *)skb_put(skb, sizeof(__be16));
   *svlan_encapsulated_proto = htons(ETH_P_8021Q);
  }
  vlan_tci = (__be16 *)skb_put(skb, sizeof(__be16));
  *vlan_tci = build_tci(pkt_dev->vlan_id,
          pkt_dev->vlan_cfi,
          pkt_dev->vlan_p);
  vlan_encapsulated_proto = (__be16 *)skb_put(skb, sizeof(__be16));
  *vlan_encapsulated_proto = htons(ETH_P_IP);
 }

 skb->network_header = skb->tail;
 skb->transport_header = skb->network_header + sizeof(struct iphdr);
 skb_put(skb, sizeof(struct iphdr) + sizeof(struct udphdr));
 skb_set_queue_mapping(skb, queue_map);
 iph = ip_hdr(skb);
 udph = udp_hdr(skb);

 memcpy(eth, pkt_dev->hh, 12);
 *(__be16 *) & eth[12] = protocol;


 datalen = pkt_dev->cur_pkt_size - 14 - 20 - 8 -
    pkt_dev->pkt_overhead;
 if (datalen < sizeof(struct pktgen_hdr))
  datalen = sizeof(struct pktgen_hdr);

 udph->source = htons(pkt_dev->cur_udp_src);
 udph->dest = htons(pkt_dev->cur_udp_dst);
 udph->len = htons(datalen + 8);
 udph->check = 0;

 iph->ihl = 5;
 iph->version = 4;
 iph->ttl = 32;
 iph->tos = pkt_dev->tos;
 iph->protocol = IPPROTO_UDP;
 iph->saddr = pkt_dev->cur_saddr;
 iph->daddr = pkt_dev->cur_daddr;
 iph->id = htons(pkt_dev->ip_id);
 pkt_dev->ip_id++;
 iph->frag_off = 0;
 iplen = 20 + 8 + datalen;
 iph->tot_len = htons(iplen);
 iph->check = 0;
 iph->check = ip_fast_csum((void *)iph, iph->ihl);
 skb->protocol = protocol;
 skb->mac_header = (skb->network_header - ETH_HLEN -
      pkt_dev->pkt_overhead);
 skb->dev = odev;
 skb->pkt_type = PACKET_HOST;

 if (pkt_dev->nfrags <= 0) {
  pgh = (struct pktgen_hdr *)skb_put(skb, datalen);
  memset(pgh + 1, 0, datalen - sizeof(struct pktgen_hdr));
 } else {
  int frags = pkt_dev->nfrags;
  int i, len;

  pgh = (struct pktgen_hdr *)(((char *)(udph)) + 8);

  if (frags > MAX_SKB_FRAGS)
   frags = MAX_SKB_FRAGS;
  if (datalen > frags * PAGE_SIZE) {
   len = datalen - frags * PAGE_SIZE;
   memset(skb_put(skb, len), 0, len);
   datalen = frags * PAGE_SIZE;
  }

  i = 0;
  while (datalen > 0) {
   struct page *page = alloc_pages(GFP_KERNEL | __GFP_ZERO, 0);
   skb_shinfo(skb)->frags[i].page = page;
   skb_shinfo(skb)->frags[i].page_offset = 0;
   skb_shinfo(skb)->frags[i].size =
       (datalen < PAGE_SIZE ? datalen : PAGE_SIZE);
   datalen -= skb_shinfo(skb)->frags[i].size;
   skb->len += skb_shinfo(skb)->frags[i].size;
   skb->data_len += skb_shinfo(skb)->frags[i].size;
   i++;
   skb_shinfo(skb)->nr_frags = i;
  }

  while (i < frags) {
   int rem;

   if (i == 0)
    break;

   rem = skb_shinfo(skb)->frags[i - 1].size / 2;
   if (rem == 0)
    break;

   skb_shinfo(skb)->frags[i - 1].size -= rem;

   skb_shinfo(skb)->frags[i] =
       skb_shinfo(skb)->frags[i - 1];
   get_page(skb_shinfo(skb)->frags[i].page);
   skb_shinfo(skb)->frags[i].page =
       skb_shinfo(skb)->frags[i - 1].page;
   skb_shinfo(skb)->frags[i].page_offset +=
       skb_shinfo(skb)->frags[i - 1].size;
   skb_shinfo(skb)->frags[i].size = rem;
   i++;
   skb_shinfo(skb)->nr_frags = i;
  }
 }




 if (pgh) {
  struct timeval timestamp;

  pgh->pgh_magic = htonl(PKTGEN_MAGIC);
  pgh->seq_num = htonl(pkt_dev->seq_num);

  do_gettimeofday(&timestamp);
  pgh->tv_sec = htonl(timestamp.tv_sec);
  pgh->tv_usec = htonl(timestamp.tv_usec);
 }






 return skb;
}
