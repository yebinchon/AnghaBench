
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int rcv_wscale; int ts_recent; } ;
struct tcp_sock {TYPE_2__ rx_opt; TYPE_1__* af_specific; } ;
struct tcp_out_options {int options; int ws; int tsecr; int tsval; int mss; } ;
struct tcp_md5sig_key {int dummy; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_6__ {int when; } ;
struct TYPE_4__ {struct tcp_md5sig_key* (* md5_lookup ) (struct sock*,struct sock*) ;} ;


 int OPTION_MD5 ;
 int OPTION_SACK_ADVERTISE ;
 int OPTION_TS ;
 int OPTION_WSCALE ;
 scalar_t__ TCPOLEN_MD5SIG_ALIGNED ;
 scalar_t__ TCPOLEN_MSS_ALIGNED ;
 scalar_t__ TCPOLEN_SACKPERM_ALIGNED ;
 scalar_t__ TCPOLEN_TSTAMP_ALIGNED ;
 scalar_t__ TCPOLEN_WSCALE_ALIGNED ;
 TYPE_3__* TCP_SKB_CB (struct sk_buff*) ;
 scalar_t__ likely (int) ;
 struct tcp_md5sig_key* stub1 (struct sock*,struct sock*) ;
 int sysctl_tcp_sack ;
 scalar_t__ sysctl_tcp_timestamps ;
 int sysctl_tcp_window_scaling ;
 int tcp_advertise_mss (struct sock*) ;
 struct tcp_sock* tcp_sk (struct sock*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static unsigned tcp_syn_options(struct sock *sk, struct sk_buff *skb,
    struct tcp_out_options *opts,
    struct tcp_md5sig_key **md5) {
 struct tcp_sock *tp = tcp_sk(sk);
 unsigned size = 0;
 *md5 = ((void*)0);
 opts->mss = tcp_advertise_mss(sk);
 size += TCPOLEN_MSS_ALIGNED;

 if (likely(sysctl_tcp_timestamps && *md5 == ((void*)0))) {
  opts->options |= OPTION_TS;
  opts->tsval = TCP_SKB_CB(skb)->when;
  opts->tsecr = tp->rx_opt.ts_recent;
  size += TCPOLEN_TSTAMP_ALIGNED;
 }
 if (likely(sysctl_tcp_window_scaling)) {
  opts->ws = tp->rx_opt.rcv_wscale;
  opts->options |= OPTION_WSCALE;
  size += TCPOLEN_WSCALE_ALIGNED;
 }
 if (likely(sysctl_tcp_sack)) {
  opts->options |= OPTION_SACK_ADVERTISE;
  if (unlikely(!(OPTION_TS & opts->options)))
   size += TCPOLEN_SACKPERM_ALIGNED;
 }

 return size;
}
