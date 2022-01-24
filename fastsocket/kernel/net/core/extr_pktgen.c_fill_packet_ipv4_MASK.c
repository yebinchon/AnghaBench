#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct udphdr {scalar_t__ check; void* len; void* dest; void* source; } ;
struct timeval {int /*<<< orphan*/  tv_usec; int /*<<< orphan*/  tv_sec; } ;
struct sk_buff {int network_header; int tail; int transport_header; int mac_header; int len; int data_len; int /*<<< orphan*/  pkt_type; struct net_device* dev; void* protocol; } ;
struct pktgen_hdr {void* tv_usec; void* tv_sec; void* seq_num; void* pgh_magic; } ;
struct pktgen_dev {int nr_labels; int vlan_id; int cur_pkt_size; int pkt_overhead; int svlan_id; int cur_udp_src; int cur_udp_dst; int ip_id; int nfrags; int /*<<< orphan*/  seq_num; int /*<<< orphan*/  cur_daddr; int /*<<< orphan*/  cur_saddr; int /*<<< orphan*/  tos; int /*<<< orphan*/  hh; int /*<<< orphan*/  vlan_p; int /*<<< orphan*/  vlan_cfi; int /*<<< orphan*/  svlan_p; int /*<<< orphan*/  svlan_cfi; int /*<<< orphan*/  result; int /*<<< orphan*/  cur_queue_map; } ;
struct page {int dummy; } ;
struct net_device {int hard_header_len; } ;
struct iphdr {int ihl; int version; int ttl; scalar_t__ check; void* tot_len; scalar_t__ frag_off; void* id; int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; int /*<<< orphan*/  protocol; int /*<<< orphan*/  tos; } ;
typedef  int /*<<< orphan*/  __u8 ;
typedef  int /*<<< orphan*/  __u32 ;
typedef  int /*<<< orphan*/  __be32 ;
typedef  void* __be16 ;
struct TYPE_4__ {int nr_frags; TYPE_1__* frags; } ;
struct TYPE_3__ {int size; scalar_t__ page_offset; struct page* page; } ;

/* Variables and functions */
 int ETH_HLEN ; 
 int ETH_P_8021Q ; 
 int ETH_P_IP ; 
 int ETH_P_MPLS_UC ; 
 int GFP_KERNEL ; 
 int /*<<< orphan*/  GFP_NOWAIT ; 
 int /*<<< orphan*/  IPPROTO_UDP ; 
 int MAX_SKB_FRAGS ; 
 int /*<<< orphan*/  PACKET_HOST ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  PKTGEN_MAGIC ; 
 int __GFP_ZERO ; 
 struct sk_buff* FUNC0 (struct net_device*,int,int /*<<< orphan*/ ) ; 
 struct page* FUNC1 (int,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct timeval*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 
 void* FUNC6 (int) ; 
 scalar_t__ FUNC7 (void*,int) ; 
 struct iphdr* FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct pktgen_hdr*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct pktgen_dev*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,struct pktgen_dev*) ; 
 int /*<<< orphan*/  FUNC13 (struct pktgen_dev*,struct sk_buff*,void*) ; 
 scalar_t__ FUNC14 (struct sk_buff*,int) ; 
 struct pktgen_hdr* FUNC15 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC18 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,char*) ; 
 struct udphdr* FUNC20 (struct sk_buff*) ; 

__attribute__((used)) static struct sk_buff *FUNC21(struct net_device *odev,
					struct pktgen_dev *pkt_dev)
{
	struct sk_buff *skb = NULL;
	__u8 *eth;
	struct udphdr *udph;
	int datalen, iplen;
	struct iphdr *iph;
	struct pktgen_hdr *pgh = NULL;
	__be16 protocol = FUNC6(ETH_P_IP);
	__be32 *mpls;
	__be16 *vlan_tci = NULL;                 /* Encapsulates priority and VLAN ID */
	__be16 *vlan_encapsulated_proto = NULL;  /* packet type ID field (or len) for VLAN tag */
	__be16 *svlan_tci = NULL;                /* Encapsulates priority and SVLAN ID */
	__be16 *svlan_encapsulated_proto = NULL; /* packet type ID field (or len) for SVLAN tag */
	u16 queue_map;

	if (pkt_dev->nr_labels)
		protocol = FUNC6(ETH_P_MPLS_UC);

	if (pkt_dev->vlan_id != 0xffff)
		protocol = FUNC6(ETH_P_8021Q);

	/* Update any of the values, used when we're incrementing various
	 * fields.
	 */
	queue_map = pkt_dev->cur_queue_map;
	FUNC11(pkt_dev);

	datalen = (odev->hard_header_len + 16) & ~0xf;
	skb = FUNC0(odev,
				 pkt_dev->cur_pkt_size + 64
				 + datalen + pkt_dev->pkt_overhead, GFP_NOWAIT);
	if (!skb) {
		FUNC19(pkt_dev->result, "No memory");
		return NULL;
	}

	FUNC16(skb, datalen);

	/*  Reserve for ethernet and IP header  */
	eth = (__u8 *) FUNC14(skb, 14);
	mpls = (__be32 *)FUNC15(skb, pkt_dev->nr_labels*sizeof(__u32));
	if (pkt_dev->nr_labels)
		FUNC12(mpls, pkt_dev);

	if (pkt_dev->vlan_id != 0xffff) {
		if (pkt_dev->svlan_id != 0xffff) {
			svlan_tci = (__be16 *)FUNC15(skb, sizeof(__be16));
			*svlan_tci = FUNC2(pkt_dev->svlan_id,
					       pkt_dev->svlan_cfi,
					       pkt_dev->svlan_p);
			svlan_encapsulated_proto = (__be16 *)FUNC15(skb, sizeof(__be16));
			*svlan_encapsulated_proto = FUNC6(ETH_P_8021Q);
		}
		vlan_tci = (__be16 *)FUNC15(skb, sizeof(__be16));
		*vlan_tci = FUNC2(pkt_dev->vlan_id,
				      pkt_dev->vlan_cfi,
				      pkt_dev->vlan_p);
		vlan_encapsulated_proto = (__be16 *)FUNC15(skb, sizeof(__be16));
		*vlan_encapsulated_proto = FUNC6(ETH_P_IP);
	}

	skb->network_header = skb->tail;
	skb->transport_header = skb->network_header + sizeof(struct iphdr);
	FUNC15(skb, sizeof(struct iphdr) + sizeof(struct udphdr));
	FUNC17(skb, queue_map);
	iph = FUNC8(skb);
	udph = FUNC20(skb);

	FUNC9(eth, pkt_dev->hh, 12);
	*(__be16 *) & eth[12] = protocol;

	/* Eth + IPh + UDPh + mpls */
	datalen = pkt_dev->cur_pkt_size - 14 - 20 - 8 -
		  pkt_dev->pkt_overhead;
	if (datalen < sizeof(struct pktgen_hdr))
		datalen = sizeof(struct pktgen_hdr);

	udph->source = FUNC6(pkt_dev->cur_udp_src);
	udph->dest = FUNC6(pkt_dev->cur_udp_dst);
	udph->len = FUNC6(datalen + 8);	/* DATA + udphdr */
	udph->check = 0;	/* No checksum */

	iph->ihl = 5;
	iph->version = 4;
	iph->ttl = 32;
	iph->tos = pkt_dev->tos;
	iph->protocol = IPPROTO_UDP;	/* UDP */
	iph->saddr = pkt_dev->cur_saddr;
	iph->daddr = pkt_dev->cur_daddr;
	iph->id = FUNC6(pkt_dev->ip_id);
	pkt_dev->ip_id++;
	iph->frag_off = 0;
	iplen = 20 + 8 + datalen;
	iph->tot_len = FUNC6(iplen);
	iph->check = 0;
	iph->check = FUNC7((void *)iph, iph->ihl);
	skb->protocol = protocol;
	skb->mac_header = (skb->network_header - ETH_HLEN -
			   pkt_dev->pkt_overhead);
	skb->dev = odev;
	skb->pkt_type = PACKET_HOST;

	if (pkt_dev->nfrags <= 0) {
		pgh = (struct pktgen_hdr *)FUNC15(skb, datalen);
		FUNC10(pgh + 1, 0, datalen - sizeof(struct pktgen_hdr));
	} else {
		int frags = pkt_dev->nfrags;
		int i, len;

		pgh = (struct pktgen_hdr *)(((char *)(udph)) + 8);

		if (frags > MAX_SKB_FRAGS)
			frags = MAX_SKB_FRAGS;
		if (datalen > frags * PAGE_SIZE) {
			len = datalen - frags * PAGE_SIZE;
			FUNC10(FUNC15(skb, len), 0, len);
			datalen = frags * PAGE_SIZE;
		}

		i = 0;
		while (datalen > 0) {
			struct page *page = FUNC1(GFP_KERNEL | __GFP_ZERO, 0);
			FUNC18(skb)->frags[i].page = page;
			FUNC18(skb)->frags[i].page_offset = 0;
			FUNC18(skb)->frags[i].size =
			    (datalen < PAGE_SIZE ? datalen : PAGE_SIZE);
			datalen -= FUNC18(skb)->frags[i].size;
			skb->len += FUNC18(skb)->frags[i].size;
			skb->data_len += FUNC18(skb)->frags[i].size;
			i++;
			FUNC18(skb)->nr_frags = i;
		}

		while (i < frags) {
			int rem;

			if (i == 0)
				break;

			rem = FUNC18(skb)->frags[i - 1].size / 2;
			if (rem == 0)
				break;

			FUNC18(skb)->frags[i - 1].size -= rem;

			FUNC18(skb)->frags[i] =
			    FUNC18(skb)->frags[i - 1];
			FUNC4(FUNC18(skb)->frags[i].page);
			FUNC18(skb)->frags[i].page =
			    FUNC18(skb)->frags[i - 1].page;
			FUNC18(skb)->frags[i].page_offset +=
			    FUNC18(skb)->frags[i - 1].size;
			FUNC18(skb)->frags[i].size = rem;
			i++;
			FUNC18(skb)->nr_frags = i;
		}
	}

	/* Stamp the time, and sequence number,
	 * convert them to network byte order
	 */
	if (pgh) {
		struct timeval timestamp;

		pgh->pgh_magic = FUNC5(PKTGEN_MAGIC);
		pgh->seq_num = FUNC5(pkt_dev->seq_num);

		FUNC3(&timestamp);
		pgh->tv_sec = FUNC5(timestamp.tv_sec);
		pgh->tv_usec = FUNC5(timestamp.tv_usec);
	}

#ifdef CONFIG_XFRM
	if (!process_ipsec(pkt_dev, skb, protocol))
		return NULL;
#endif

	return skb;
}