
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;


 int tcp_check_space (struct sock*) ;
 int tcp_push_pending_frames (struct sock*) ;

__attribute__((used)) static inline void tcp_data_snd_check(struct sock *sk)
{
 tcp_push_pending_frames(sk);
 tcp_check_space(sk);
}
