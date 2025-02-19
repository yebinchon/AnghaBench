
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct tcp_sock {scalar_t__ const snd_una; scalar_t__ const snd_wl1; scalar_t__ const snd_wnd; } ;


 scalar_t__ after (scalar_t__ const,scalar_t__ const) ;

__attribute__((used)) static inline int tcp_may_update_window(const struct tcp_sock *tp,
     const u32 ack, const u32 ack_seq,
     const u32 nwin)
{
 return (after(ack, tp->snd_una) ||
  after(ack_seq, tp->snd_wl1) ||
  (ack_seq == tp->snd_wl1 && nwin > tp->snd_wnd));
}
