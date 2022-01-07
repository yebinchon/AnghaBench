
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcphdr {int dummy; } ;
struct tcp_sock {scalar_t__ snd_cwnd; int srtt; int snd_wnd; int snd_una; int snd_nxt; } ;
struct tcp_log {scalar_t__ snd_cwnd; int srtt; int ssthresh; int snd_wnd; int snd_una; int snd_nxt; int length; int dport; int daddr; int sport; int saddr; int tstamp; } ;
struct sock {int dummy; } ;
struct sk_buff {int len; } ;
struct inet_sock {int dport; int daddr; int sport; int saddr; } ;
struct TYPE_2__ {scalar_t__ lastcwnd; int head; int wait; int lock; struct tcp_log* log; } ;


 int bufsize ;
 scalar_t__ full ;
 struct inet_sock* inet_sk (struct sock*) ;
 int jprobe_return () ;
 int ktime_get () ;
 scalar_t__ ntohs (int ) ;
 scalar_t__ port ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int tcp_current_ssthresh (struct sock*) ;
 TYPE_1__ tcp_probe ;
 int tcp_probe_avail () ;
 struct tcp_sock* tcp_sk (struct sock*) ;
 int wake_up (int *) ;

__attribute__((used)) static int jtcp_rcv_established(struct sock *sk, struct sk_buff *skb,
          struct tcphdr *th, unsigned len)
{
 const struct tcp_sock *tp = tcp_sk(sk);
 const struct inet_sock *inet = inet_sk(sk);


 if ((port == 0 || ntohs(inet->dport) == port || ntohs(inet->sport) == port)
     && (full || tp->snd_cwnd != tcp_probe.lastcwnd)) {

  spin_lock(&tcp_probe.lock);

  if (tcp_probe_avail() > 1) {
   struct tcp_log *p = tcp_probe.log + tcp_probe.head;

   p->tstamp = ktime_get();
   p->saddr = inet->saddr;
   p->sport = inet->sport;
   p->daddr = inet->daddr;
   p->dport = inet->dport;
   p->length = skb->len;
   p->snd_nxt = tp->snd_nxt;
   p->snd_una = tp->snd_una;
   p->snd_cwnd = tp->snd_cwnd;
   p->snd_wnd = tp->snd_wnd;
   p->ssthresh = tcp_current_ssthresh(sk);
   p->srtt = tp->srtt >> 3;

   tcp_probe.head = (tcp_probe.head + 1) % bufsize;
  }
  tcp_probe.lastcwnd = tp->snd_cwnd;
  spin_unlock(&tcp_probe.lock);

  wake_up(&tcp_probe.wait);
 }

 jprobe_return();
 return 0;
}
