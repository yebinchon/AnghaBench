
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;


 int inet6_destroy_sock (struct sock*) ;
 int lock_sock (struct sock*) ;
 int release_sock (struct sock*) ;
 int udp_v6_flush_pending_frames (struct sock*) ;

void udpv6_destroy_sock(struct sock *sk)
{
 lock_sock(sk);
 udp_v6_flush_pending_frames(sk);
 release_sock(sk);

 inet6_destroy_sock(sk);
}
