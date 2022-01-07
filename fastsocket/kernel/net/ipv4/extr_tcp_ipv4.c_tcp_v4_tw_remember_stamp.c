
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_timewait_sock {scalar_t__ tw_ts_recent_stamp; scalar_t__ tw_ts_recent; } ;
struct sock {int dummy; } ;
struct inet_timewait_sock {int tw_daddr; } ;
struct inet_peer {scalar_t__ tcp_ts_stamp; scalar_t__ tcp_ts; } ;
typedef scalar_t__ s32 ;


 scalar_t__ TCP_PAWS_MSL ;
 scalar_t__ get_seconds () ;
 struct inet_peer* inet_getpeer (int ,int) ;
 int inet_putpeer (struct inet_peer*) ;
 struct tcp_timewait_sock* tcp_twsk (struct sock*) ;

int tcp_v4_tw_remember_stamp(struct inet_timewait_sock *tw)
{
 struct inet_peer *peer = inet_getpeer(tw->tw_daddr, 1);

 if (peer) {
  const struct tcp_timewait_sock *tcptw = tcp_twsk((struct sock *)tw);

  if ((s32)(peer->tcp_ts - tcptw->tw_ts_recent) <= 0 ||
      (peer->tcp_ts_stamp + TCP_PAWS_MSL < get_seconds() &&
       peer->tcp_ts_stamp <= tcptw->tw_ts_recent_stamp)) {
   peer->tcp_ts_stamp = tcptw->tw_ts_recent_stamp;
   peer->tcp_ts = tcptw->tw_ts_recent;
  }
  inet_putpeer(peer);
  return 1;
 }

 return 0;
}
