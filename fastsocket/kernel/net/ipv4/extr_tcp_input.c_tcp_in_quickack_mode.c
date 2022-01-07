
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct TYPE_2__ {int pingpong; scalar_t__ quick; } ;
struct inet_connection_sock {TYPE_1__ icsk_ack; } ;


 struct inet_connection_sock* inet_csk (struct sock const*) ;

__attribute__((used)) static inline int tcp_in_quickack_mode(const struct sock *sk)
{
 const struct inet_connection_sock *icsk = inet_csk(sk);
 return icsk->icsk_ack.quick && !icsk->icsk_ack.pingpong;
}
