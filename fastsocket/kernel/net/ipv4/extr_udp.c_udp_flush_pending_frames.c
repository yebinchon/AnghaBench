
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udp_sock {scalar_t__ pending; scalar_t__ len; } ;
struct sock {int dummy; } ;


 int ip_flush_pending_frames (struct sock*) ;
 struct udp_sock* udp_sk (struct sock*) ;

void udp_flush_pending_frames(struct sock *sk)
{
 struct udp_sock *up = udp_sk(sk);

 if (up->pending) {
  up->len = 0;
  up->pending = 0;
  ip_flush_pending_frames(sk);
 }
}
