
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sock {TYPE_2__* sk_socket; } ;
struct TYPE_4__ {TYPE_1__* file; } ;
struct TYPE_3__ {int f_owner; } ;


 int POLL_PRI ;
 int SOCK_WAKE_URG ;
 scalar_t__ send_sigurg (int *) ;
 int sk_wake_async (struct sock*,int ,int ) ;

void sk_send_sigurg(struct sock *sk)
{
 if (sk->sk_socket && sk->sk_socket->file)
  if (send_sigurg(&sk->sk_socket->file->f_owner))
   sk_wake_async(sk, SOCK_WAKE_URG, POLL_PRI);
}
