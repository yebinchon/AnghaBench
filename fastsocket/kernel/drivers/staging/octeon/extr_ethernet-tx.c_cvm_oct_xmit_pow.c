
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint64_t ;
struct sk_buff {int len; scalar_t__ protocol; scalar_t__ pkt_type; scalar_t__ data; int csum; } ;
struct TYPE_12__ {int tx_bytes; int tx_packets; int tx_dropped; } ;
struct octeon_ethernet {int port; TYPE_2__ stats; } ;
struct net_device {int name; } ;
struct TYPE_11__ {int is_rarp; int is_arp; int is_bcast; int is_mcast; int not_IP; scalar_t__ err_code; scalar_t__ rcv_error; scalar_t__ software; scalar_t__ vlan_id; scalar_t__ vlan_cfi; scalar_t__ vlan_valid; } ;
struct TYPE_16__ {int bufs; int ip_offset; int tcp_or_udp; int is_frag; int is_bcast; int is_mcast; scalar_t__ err_code; scalar_t__ rcv_error; scalar_t__ not_IP; scalar_t__ IP_exc; scalar_t__ L4_error; scalar_t__ software; scalar_t__ is_v6; scalar_t__ dec_ipsec; scalar_t__ dec_ipcomp; scalar_t__ vlan_id; scalar_t__ vlan_cfi; scalar_t__ vlan_valid; } ;
struct TYPE_15__ {TYPE_1__ snoip; TYPE_6__ s; scalar_t__ u64; } ;
struct TYPE_13__ {int back; int size; int pool; int addr; } ;
struct TYPE_14__ {TYPE_3__ s; scalar_t__ u64; } ;
struct TYPE_17__ {int len; int ipprt; int qos; void* packet_data; void* grp; int tag_type; void* tag; TYPE_5__ word2; TYPE_4__ packet_ptr; int hw_chksum; } ;
typedef TYPE_7__ cvmx_wqe_t ;
struct TYPE_18__ {scalar_t__ protocol; int frag_off; } ;


 int CVMX_FPA_PACKET_POOL ;
 int CVMX_FPA_PACKET_POOL_SIZE ;
 int CVMX_FPA_WQE_POOL ;
 int CVMX_HELPER_FIRST_MBUFF_SKIP ;
 int CVMX_HELPER_INPUT_TAG_TYPE ;
 int DEBUGPRINT (char*,int ) ;
 int DONT_WRITEBACK (int) ;
 int ETH_P_ARP ;
 int ETH_P_IP ;
 int ETH_P_RARP ;
 scalar_t__ IP_PROTOCOL_TCP ;
 scalar_t__ IP_PROTOCOL_UDP ;
 scalar_t__ PACKET_BROADCAST ;
 scalar_t__ PACKET_MULTICAST ;
 void* cvmx_fpa_alloc (int ) ;
 int cvmx_fpa_free (TYPE_7__*,int ,int ) ;
 int cvmx_pow_work_submit (TYPE_7__*,void*,int ,int,void*) ;
 int cvmx_ptr_to_phys (void*) ;
 int dev_kfree_skb (struct sk_buff*) ;
 scalar_t__ htons (int ) ;
 TYPE_8__* ip_hdr (struct sk_buff*) ;
 int memcpy (void*,scalar_t__,int) ;
 struct octeon_ethernet* netdev_priv (struct net_device*) ;
 void* pow_send_group ;
 scalar_t__ unlikely (int ) ;

int cvm_oct_xmit_pow(struct sk_buff *skb, struct net_device *dev)
{
 struct octeon_ethernet *priv = netdev_priv(dev);
 void *packet_buffer;
 void *copy_location;


 cvmx_wqe_t *work = cvmx_fpa_alloc(CVMX_FPA_WQE_POOL);
 if (unlikely(work == ((void*)0))) {
  DEBUGPRINT("%s: Failed to allocate a work queue entry\n",
      dev->name);
  priv->stats.tx_dropped++;
  dev_kfree_skb(skb);
  return 0;
 }


 packet_buffer = cvmx_fpa_alloc(CVMX_FPA_PACKET_POOL);
 if (unlikely(packet_buffer == ((void*)0))) {
  DEBUGPRINT("%s: Failed to allocate a packet buffer\n",
      dev->name);
  cvmx_fpa_free(work, CVMX_FPA_WQE_POOL, DONT_WRITEBACK(1));
  priv->stats.tx_dropped++;
  dev_kfree_skb(skb);
  return 0;
 }
 copy_location = packet_buffer + sizeof(uint64_t);
 copy_location += ((CVMX_HELPER_FIRST_MBUFF_SKIP + 7) & 0xfff8) + 6;







 memcpy(copy_location, skb->data, skb->len);





 work->hw_chksum = skb->csum;
 work->len = skb->len;
 work->ipprt = priv->port;
 work->qos = priv->port & 0x7;
 work->grp = pow_send_group;
 work->tag_type = CVMX_HELPER_INPUT_TAG_TYPE;
 work->tag = pow_send_group;

 work->word2.u64 = 0;
 work->word2.s.bufs = 1;
 work->packet_ptr.u64 = 0;
 work->packet_ptr.s.addr = cvmx_ptr_to_phys(copy_location);
 work->packet_ptr.s.pool = CVMX_FPA_PACKET_POOL;
 work->packet_ptr.s.size = CVMX_FPA_PACKET_POOL_SIZE;
 work->packet_ptr.s.back = (copy_location - packet_buffer) >> 7;

 if (skb->protocol == htons(ETH_P_IP)) {
  work->word2.s.ip_offset = 14;






  work->word2.s.tcp_or_udp =
      (ip_hdr(skb)->protocol == IP_PROTOCOL_TCP)
      || (ip_hdr(skb)->protocol == IP_PROTOCOL_UDP);
  work->word2.s.is_frag = !((ip_hdr(skb)->frag_off == 0)
       || (ip_hdr(skb)->frag_off ==
           1 << 14));




  work->word2.s.is_bcast = (skb->pkt_type == PACKET_BROADCAST);
  work->word2.s.is_mcast = (skb->pkt_type == PACKET_MULTICAST);
  memcpy(work->packet_data, skb->data + 10,
         sizeof(work->packet_data));
 } else {






  work->word2.snoip.is_rarp = skb->protocol == htons(ETH_P_RARP);
  work->word2.snoip.is_arp = skb->protocol == htons(ETH_P_ARP);
  work->word2.snoip.is_bcast =
      (skb->pkt_type == PACKET_BROADCAST);
  work->word2.snoip.is_mcast =
      (skb->pkt_type == PACKET_MULTICAST);
  work->word2.snoip.not_IP = 1;






  memcpy(work->packet_data, skb->data, sizeof(work->packet_data));
 }


 cvmx_pow_work_submit(work, work->tag, work->tag_type, work->qos,
        work->grp);
 priv->stats.tx_packets++;
 priv->stats.tx_bytes += skb->len;
 dev_kfree_skb(skb);
 return 0;
}
