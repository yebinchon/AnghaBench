
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct TYPE_2__ {int condition; } ;


 int NR_COND_PEER_RX_BUSY ;
 int bh_lock_sock (struct sock*) ;
 int bh_unlock_sock (struct sock*) ;
 TYPE_1__* nr_sk (struct sock*) ;

__attribute__((used)) static void nr_t4timer_expiry(unsigned long param)
{
 struct sock *sk = (struct sock *)param;

 bh_lock_sock(sk);
 nr_sk(sk)->condition &= ~NR_COND_PEER_RX_BUSY;
 bh_unlock_sock(sk);
}
