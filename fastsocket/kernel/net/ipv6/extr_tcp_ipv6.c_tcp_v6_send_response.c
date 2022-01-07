
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct tcphdr {unsigned int doff; int ack; int rst; int source; int fl_ip_sport; int dest; int fl_ip_dport; int oif; int proto; int fl6_dst; int fl6_src; int check; int window; void* ack_seq; void* seq; } ;
struct tcp_md5sig_key {int dummy; } ;
struct sock {int dummy; } ;
struct sk_buff {int csum; } ;
struct TYPE_4__ {struct sock* tcp_sk; } ;
struct net {TYPE_1__ ipv6; } ;
struct ipv6hdr {int dummy; } ;
struct flowi {unsigned int doff; int ack; int rst; int source; int fl_ip_sport; int dest; int fl_ip_dport; int oif; int proto; int fl6_dst; int fl6_src; int check; int window; void* ack_seq; void* seq; } ;
struct dst_entry {int dummy; } ;
typedef int fl ;
typedef int __u8 ;
typedef int __be32 ;
struct TYPE_6__ {int daddr; int saddr; } ;
struct TYPE_5__ {int dev; } ;


 int GFP_ATOMIC ;
 int IPPROTO_TCP ;
 scalar_t__ MAX_HEADER ;
 int TCPOLEN_MD5SIG ;
 scalar_t__ TCPOLEN_MD5SIG_ALIGNED ;
 int TCPOLEN_TIMESTAMP ;
 scalar_t__ TCPOLEN_TSTAMP_ALIGNED ;
 int TCPOPT_MD5SIG ;
 int TCPOPT_NOP ;
 int TCPOPT_TIMESTAMP ;
 int TCP_INC_STATS_BH (struct net*,int ) ;
 int TCP_MIB_OUTRSTS ;
 int TCP_MIB_OUTSEGS ;
 struct sk_buff* alloc_skb (scalar_t__,int ) ;
 int csum_ipv6_magic (int *,int *,unsigned int,int ,int ) ;
 int csum_partial (struct tcphdr*,unsigned int,int ) ;
 struct net* dev_net (int ) ;
 void* htonl (int) ;
 int htons (int) ;
 int inet6_iif (struct sk_buff*) ;
 int ip6_dst_lookup (struct sock*,struct dst_entry**,struct tcphdr*) ;
 int ip6_xmit (struct sock*,struct sk_buff*,struct tcphdr*,int *,int ) ;
 int ipv6_addr_copy (int *,int *) ;
 TYPE_3__* ipv6_hdr (struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 int memset (struct tcphdr*,int ,int) ;
 int security_skb_classify_flow (struct sk_buff*,struct tcphdr*) ;
 TYPE_2__* skb_dst (struct sk_buff*) ;
 int skb_dst_set (struct sk_buff*,struct dst_entry*) ;
 scalar_t__ skb_push (struct sk_buff*,unsigned int) ;
 int skb_reserve (struct sk_buff*,scalar_t__) ;
 int skb_reset_transport_header (struct sk_buff*) ;
 struct tcphdr* tcp_hdr (struct sk_buff*) ;
 int tcp_time_stamp ;
 int tcp_v6_md5_hash_hdr (int *,struct tcp_md5sig_key*,int *,int *,struct tcphdr*) ;
 scalar_t__ xfrm_lookup (struct net*,struct dst_entry**,struct tcphdr*,int *,int ) ;

__attribute__((used)) static void tcp_v6_send_response(struct sk_buff *skb, u32 seq, u32 ack, u32 win,
     u32 ts, struct tcp_md5sig_key *key, int rst)
{
 struct tcphdr *th = tcp_hdr(skb), *t1;
 struct sk_buff *buff;
 struct flowi fl;
 struct net *net = dev_net(skb_dst(skb)->dev);
 struct sock *ctl_sk = net->ipv6.tcp_sk;
 unsigned int tot_len = sizeof(struct tcphdr);
 struct dst_entry *dst;
 __be32 *topt;

 if (ts)
  tot_len += TCPOLEN_TSTAMP_ALIGNED;





 buff = alloc_skb(MAX_HEADER + sizeof(struct ipv6hdr) + tot_len,
    GFP_ATOMIC);
 if (buff == ((void*)0))
  return;

 skb_reserve(buff, MAX_HEADER + sizeof(struct ipv6hdr) + tot_len);

 t1 = (struct tcphdr *) skb_push(buff, tot_len);
 skb_reset_transport_header(buff);


 memset(t1, 0, sizeof(*t1));
 t1->dest = th->source;
 t1->source = th->dest;
 t1->doff = tot_len / 4;
 t1->seq = htonl(seq);
 t1->ack_seq = htonl(ack);
 t1->ack = !rst || !th->ack;
 t1->rst = rst;
 t1->window = htons(win);

 topt = (__be32 *)(t1 + 1);

 if (ts) {
  *topt++ = htonl((TCPOPT_NOP << 24) | (TCPOPT_NOP << 16) |
    (TCPOPT_TIMESTAMP << 8) | TCPOLEN_TIMESTAMP);
  *topt++ = htonl(tcp_time_stamp);
  *topt++ = htonl(ts);
 }
 buff->csum = csum_partial(t1, tot_len, 0);

 memset(&fl, 0, sizeof(fl));
 ipv6_addr_copy(&fl.fl6_dst, &ipv6_hdr(skb)->saddr);
 ipv6_addr_copy(&fl.fl6_src, &ipv6_hdr(skb)->daddr);

 t1->check = csum_ipv6_magic(&fl.fl6_src, &fl.fl6_dst,
        tot_len, IPPROTO_TCP,
        buff->csum);

 fl.proto = IPPROTO_TCP;
 fl.oif = inet6_iif(skb);
 fl.fl_ip_dport = t1->dest;
 fl.fl_ip_sport = t1->source;
 security_skb_classify_flow(skb, &fl);





 if (!ip6_dst_lookup(ctl_sk, &dst, &fl)) {
  if (xfrm_lookup(net, &dst, &fl, ((void*)0), 0) >= 0) {
   skb_dst_set(buff, dst);
   ip6_xmit(ctl_sk, buff, &fl, ((void*)0), 0);
   TCP_INC_STATS_BH(net, TCP_MIB_OUTSEGS);
   if (rst)
    TCP_INC_STATS_BH(net, TCP_MIB_OUTRSTS);
   return;
  }
 }

 kfree_skb(buff);
}
