
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_sock {scalar_t__ snd_una; scalar_t__ snd_up; } ;



__attribute__((used)) static inline int tcp_urg_mode(const struct tcp_sock *tp)
{
 return tp->snd_una != tp->snd_up;
}
