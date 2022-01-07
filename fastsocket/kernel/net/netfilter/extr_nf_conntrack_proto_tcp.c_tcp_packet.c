
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u_int8_t ;
struct tcphdr {scalar_t__ rst; scalar_t__ fin; scalar_t__ ack; scalar_t__ syn; int ack_seq; int seq; int window; } ;
struct sk_buff {int len; } ;
struct nf_conntrack_tuple {int dummy; } ;
struct TYPE_9__ {int state; int last_dir; unsigned int last_index; int last_win; scalar_t__ retrans; TYPE_5__* seen; int last_end; int last_seq; } ;
struct TYPE_7__ {TYPE_4__ tcp; } ;
struct TYPE_6__ {int last_wscale; int last_flags; } ;
struct nf_conn {int status; int lock; TYPE_2__ proto; TYPE_1__ proto_ext; TYPE_3__* tuplehash; } ;
struct net {int dummy; } ;
struct ip_ct_tcp_state {int flags; int td_scale; } ;
typedef enum tcp_conntrack { ____Placeholder_tcp_conntrack } tcp_conntrack ;
typedef enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;
typedef enum ip_conntrack_dir { ____Placeholder_ip_conntrack_dir } ip_conntrack_dir ;
typedef int _tcph ;
struct TYPE_10__ {int flags; int td_maxwin; int td_scale; int td_maxack; int td_maxend; int td_end; } ;
struct TYPE_8__ {struct nf_conntrack_tuple tuple; } ;


 int BUG_ON (int ) ;
 int CTINFO2DIR (int) ;
 int IPCT_PROTOINFO ;
 int IPCT_STATUS ;
 int IPPROTO_TCP ;
 int IPS_ASSURED_BIT ;
 int IPS_SEEN_REPLY_BIT ;
 int IP_CT_DIR_ORIGINAL ;
 int IP_CT_TCP_FLAG_CLOSE_INIT ;
 int IP_CT_TCP_FLAG_DATA_UNACKNOWLEDGED ;
 int IP_CT_TCP_FLAG_MAXACK_SET ;
 int IP_CT_TCP_FLAG_SACK_PERM ;
 int IP_CT_TCP_FLAG_WINDOW_SCALE ;
 int LOG_INVALID (struct net*,int ) ;
 int NF_ACCEPT ;
 int NF_DROP ;
 int NF_REPEAT ;
 unsigned int TCP_ACK_SET ;

 int TCP_CONNTRACK_ESTABLISHED ;
 int TCP_CONNTRACK_FIN_WAIT ;


 int TCP_CONNTRACK_SYN_RECV ;

 int TCP_CONNTRACK_TIME_WAIT ;
 unsigned int TCP_RST_SET ;
 unsigned int TCP_SYNACK_SET ;
 unsigned int TCP_SYN_SET ;
 int before (int ,int ) ;
 unsigned int get_conntrack_index (struct tcphdr const*) ;
 int memset (TYPE_5__*,int ,int) ;
 int nf_conntrack_event_cache (int ,struct nf_conn*) ;
 int nf_ct_dump_tuple (struct nf_conntrack_tuple*) ;
 int nf_ct_kill (struct nf_conn*) ;
 int nf_ct_kill_acct (struct nf_conn*,int,struct sk_buff const*) ;
 struct net* nf_ct_net (struct nf_conn*) ;
 int nf_ct_refresh_acct (struct nf_conn*,int,struct sk_buff const*,unsigned long) ;
 scalar_t__ nf_ct_tcp_max_retrans ;
 unsigned long nf_ct_tcp_timeout_max_retrans ;
 unsigned long nf_ct_tcp_timeout_unacknowledged ;
 int nf_log_packet (int ,int ,struct sk_buff const*,int *,int *,int *,char*) ;
 int ntohl (int ) ;
 int ntohs (int ) ;
 int pr_debug (char*,...) ;
 int segment_seq_plus_len (int ,int ,unsigned int,struct tcphdr const*) ;
 int set_bit (int ,int *) ;
 struct tcphdr* skb_header_pointer (struct sk_buff const*,unsigned int,int,struct tcphdr*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int*** tcp_conntracks ;
 int tcp_in_window (struct nf_conn*,TYPE_4__*,int,unsigned int,struct sk_buff const*,unsigned int,struct tcphdr const*,int ) ;
 int tcp_options (struct sk_buff const*,unsigned int,struct tcphdr const*,struct ip_ct_tcp_state*) ;
 unsigned long* tcp_timeouts ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int tcp_packet(struct nf_conn *ct,
        const struct sk_buff *skb,
        unsigned int dataoff,
        enum ip_conntrack_info ctinfo,
        u_int8_t pf,
        unsigned int hooknum)
{
 struct net *net = nf_ct_net(ct);
 struct nf_conntrack_tuple *tuple;
 enum tcp_conntrack new_state, old_state;
 enum ip_conntrack_dir dir;
 const struct tcphdr *th;
 struct tcphdr _tcph;
 unsigned long timeout;
 unsigned int index;

 th = skb_header_pointer(skb, dataoff, sizeof(_tcph), &_tcph);
 BUG_ON(th == ((void*)0));

 spin_lock_bh(&ct->lock);
 old_state = ct->proto.tcp.state;
 dir = CTINFO2DIR(ctinfo);
 index = get_conntrack_index(th);
 new_state = tcp_conntracks[dir][index][old_state];
 tuple = &ct->tuplehash[dir].tuple;

 switch (new_state) {
 case 128:
  if (old_state < TCP_CONNTRACK_TIME_WAIT)
   break;
  if (((ct->proto.tcp.seen[dir].flags
        | ct->proto.tcp.seen[!dir].flags)
       & IP_CT_TCP_FLAG_CLOSE_INIT)
      || (ct->proto.tcp.last_dir == dir
          && ct->proto.tcp.last_index == TCP_RST_SET)) {


   spin_unlock_bh(&ct->lock);





   if (nf_ct_kill(ct))
    return -NF_REPEAT;
   return NF_DROP;
  }

 case 130:
  if (index == TCP_SYNACK_SET
      && ct->proto.tcp.last_index == TCP_SYN_SET
      && ct->proto.tcp.last_dir != dir
      && ntohl(th->ack_seq) == ct->proto.tcp.last_end) {






   old_state = 128;
   new_state = TCP_CONNTRACK_SYN_RECV;
   ct->proto.tcp.seen[ct->proto.tcp.last_dir].td_end =
    ct->proto.tcp.last_end;
   ct->proto.tcp.seen[ct->proto.tcp.last_dir].td_maxend =
    ct->proto.tcp.last_end;
   ct->proto.tcp.seen[ct->proto.tcp.last_dir].td_maxwin =
    ct->proto.tcp.last_win == 0 ?
     1 : ct->proto.tcp.last_win;
   ct->proto.tcp.seen[ct->proto.tcp.last_dir].td_scale =
    ct->proto_ext.last_wscale;
   ct->proto.tcp.seen[ct->proto.tcp.last_dir].flags =
    ct->proto_ext.last_flags;
   memset(&ct->proto.tcp.seen[dir], 0,
          sizeof(struct ip_ct_tcp_state));
   break;
  }
  ct->proto.tcp.last_index = index;
  ct->proto.tcp.last_dir = dir;
  ct->proto.tcp.last_seq = ntohl(th->seq);
  ct->proto.tcp.last_end =
      segment_seq_plus_len(ntohl(th->seq), skb->len, dataoff, th);
  ct->proto.tcp.last_win = ntohs(th->window);






  if (index == TCP_SYN_SET && dir == IP_CT_DIR_ORIGINAL) {
   struct ip_ct_tcp_state seen = {};

   ct->proto_ext.last_flags =
   ct->proto_ext.last_wscale = 0;
   tcp_options(skb, dataoff, th, &seen);
   if (seen.flags & IP_CT_TCP_FLAG_WINDOW_SCALE) {
    ct->proto_ext.last_flags |=
     IP_CT_TCP_FLAG_WINDOW_SCALE;
    ct->proto_ext.last_wscale = seen.td_scale;
   }
   if (seen.flags & IP_CT_TCP_FLAG_SACK_PERM) {
    ct->proto_ext.last_flags |=
     IP_CT_TCP_FLAG_SACK_PERM;
   }
  }
  spin_unlock_bh(&ct->lock);
  if (LOG_INVALID(net, IPPROTO_TCP))
   nf_log_packet(pf, 0, skb, ((void*)0), ((void*)0), ((void*)0),
      "nf_ct_tcp: invalid packet ignored ");
  return NF_ACCEPT;
 case 129:

  pr_debug("nf_ct_tcp: Invalid dir=%i index=%u ostate=%u\n",
    dir, get_conntrack_index(th), old_state);
  spin_unlock_bh(&ct->lock);
  if (LOG_INVALID(net, IPPROTO_TCP))
   nf_log_packet(pf, 0, skb, ((void*)0), ((void*)0), ((void*)0),
      "nf_ct_tcp: invalid state ");
  return -NF_ACCEPT;
 case 131:
  if (index == TCP_RST_SET
      && (ct->proto.tcp.seen[!dir].flags & IP_CT_TCP_FLAG_MAXACK_SET)
      && before(ntohl(th->seq), ct->proto.tcp.seen[!dir].td_maxack)) {

   spin_unlock_bh(&ct->lock);
   if (LOG_INVALID(net, IPPROTO_TCP))
    nf_log_packet(pf, 0, skb, ((void*)0), ((void*)0), ((void*)0),
       "nf_ct_tcp: invalid RST ");
   return -NF_ACCEPT;
  }
  if (index == TCP_RST_SET
      && ((test_bit(IPS_SEEN_REPLY_BIT, &ct->status)
    && ct->proto.tcp.last_index == TCP_SYN_SET)
   || (!test_bit(IPS_ASSURED_BIT, &ct->status)
       && ct->proto.tcp.last_index == TCP_ACK_SET))
      && ntohl(th->ack_seq) == ct->proto.tcp.last_end) {
   goto in_window;
  }

 default:

  break;
 }

 if (!tcp_in_window(ct, &ct->proto.tcp, dir, index,
      skb, dataoff, th, pf)) {
  spin_unlock_bh(&ct->lock);
  return -NF_ACCEPT;
 }
     in_window:

 ct->proto.tcp.last_index = index;
 ct->proto.tcp.last_dir = dir;

 pr_debug("tcp_conntracks: ");
 nf_ct_dump_tuple(tuple);
 pr_debug("syn=%i ack=%i fin=%i rst=%i old=%i new=%i\n",
   (th->syn ? 1 : 0), (th->ack ? 1 : 0),
   (th->fin ? 1 : 0), (th->rst ? 1 : 0),
   old_state, new_state);

 ct->proto.tcp.state = new_state;
 if (old_state != new_state
     && new_state == TCP_CONNTRACK_FIN_WAIT)
  ct->proto.tcp.seen[dir].flags |= IP_CT_TCP_FLAG_CLOSE_INIT;

 if (ct->proto.tcp.retrans >= nf_ct_tcp_max_retrans &&
     tcp_timeouts[new_state] > nf_ct_tcp_timeout_max_retrans)
  timeout = nf_ct_tcp_timeout_max_retrans;
 else if ((ct->proto.tcp.seen[0].flags | ct->proto.tcp.seen[1].flags) &
   IP_CT_TCP_FLAG_DATA_UNACKNOWLEDGED &&
   tcp_timeouts[new_state] > nf_ct_tcp_timeout_unacknowledged)
  timeout = nf_ct_tcp_timeout_unacknowledged;
 else
  timeout = tcp_timeouts[new_state];
 spin_unlock_bh(&ct->lock);

 if (new_state != old_state)
  nf_conntrack_event_cache(IPCT_PROTOINFO, ct);

 if (!test_bit(IPS_SEEN_REPLY_BIT, &ct->status)) {




  if (th->rst) {
   nf_ct_kill_acct(ct, ctinfo, skb);
   return NF_ACCEPT;
  }
 } else if (!test_bit(IPS_ASSURED_BIT, &ct->status)
     && (old_state == TCP_CONNTRACK_SYN_RECV
         || old_state == TCP_CONNTRACK_ESTABLISHED)
     && new_state == TCP_CONNTRACK_ESTABLISHED) {



  set_bit(IPS_ASSURED_BIT, &ct->status);
  nf_conntrack_event_cache(IPCT_STATUS, ct);
 }
 nf_ct_refresh_acct(ct, ctinfo, skb, timeout);

 return NF_ACCEPT;
}
