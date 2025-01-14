
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct socket {TYPE_5__* sk; } ;
struct TYPE_12__ {int pingpong; } ;
struct TYPE_11__ {int rskq_defer_accept; } ;
struct TYPE_16__ {TYPE_3__ icsk_ack; TYPE_2__ icsk_accept_queue; } ;
struct TYPE_15__ {int transparent; int freebind; } ;
struct TYPE_14__ {int sk_lingertime; int sk_reuse; int sk_flags; } ;
struct TYPE_10__ {int user_mss; } ;
struct TYPE_13__ {TYPE_1__ rx_opt; } ;


 TYPE_8__* inet_csk (TYPE_5__*) ;
 TYPE_6__* inet_sk (TYPE_5__*) ;
 TYPE_4__* tcp_sk (TYPE_5__*) ;

__attribute__((used)) static void fsocket_copy_socket(struct socket *oldsock, struct socket *newsock)
{



 newsock->sk->sk_flags = oldsock->sk->sk_flags;



 newsock->sk->sk_reuse = oldsock->sk->sk_reuse;

 newsock->sk->sk_lingertime = oldsock->sk->sk_lingertime;

 inet_sk(newsock->sk)->freebind = inet_sk(oldsock->sk)->freebind;
 inet_sk(newsock->sk)->transparent = inet_sk(oldsock->sk)->transparent;

 tcp_sk(newsock->sk)->rx_opt.user_mss = tcp_sk(oldsock->sk)->rx_opt.user_mss;

 inet_csk(newsock->sk)->icsk_accept_queue.rskq_defer_accept =
  inet_csk(oldsock->sk)->icsk_accept_queue.rskq_defer_accept;

 inet_csk(newsock->sk)->icsk_ack.pingpong = inet_csk(oldsock->sk)->icsk_ack.pingpong;


}
