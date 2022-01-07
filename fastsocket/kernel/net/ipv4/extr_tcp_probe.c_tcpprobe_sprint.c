
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timespec {scalar_t__ tv_nsec; scalar_t__ tv_sec; } ;
struct tcp_log {int srtt; int snd_wnd; int ssthresh; int snd_cwnd; int snd_una; int snd_nxt; int length; int dport; int daddr; int sport; int saddr; int tstamp; } ;
struct TYPE_2__ {int tail; int start; struct tcp_log* log; } ;


 int bufsize ;
 int ktime_sub (int ,int ) ;
 struct timespec ktime_to_timespec (int ) ;
 int ntohs (int ) ;
 int snprintf (char*,int,char*,unsigned long,unsigned long,int *,int ,int *,int ,int ,int ,int ,int ,int ,int ,int ) ;
 TYPE_1__ tcp_probe ;

__attribute__((used)) static int tcpprobe_sprint(char *tbuf, int n)
{
 const struct tcp_log *p
  = tcp_probe.log + tcp_probe.tail % bufsize;
 struct timespec tv
  = ktime_to_timespec(ktime_sub(p->tstamp, tcp_probe.start));

 return snprintf(tbuf, n,
   "%lu.%09lu %pI4:%u %pI4:%u %d %#x %#x %u %u %u %u\n",
   (unsigned long) tv.tv_sec,
   (unsigned long) tv.tv_nsec,
   &p->saddr, ntohs(p->sport),
   &p->daddr, ntohs(p->dport),
   p->length, p->snd_nxt, p->snd_una,
   p->snd_cwnd, p->ssthresh, p->snd_wnd, p->srtt);
}
