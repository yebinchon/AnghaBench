
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union skb_shared_tx {int hardware; int software; scalar_t__ flags; } ;
struct sock {int dummy; } ;
struct msghdr {int dummy; } ;


 int SOCK_TIMESTAMPING_TX_HARDWARE ;
 int SOCK_TIMESTAMPING_TX_SOFTWARE ;
 scalar_t__ sock_flag (struct sock*,int ) ;

int sock_tx_timestamp(struct msghdr *msg, struct sock *sk,
        union skb_shared_tx *shtx)
{
 shtx->flags = 0;
 if (sock_flag(sk, SOCK_TIMESTAMPING_TX_HARDWARE))
  shtx->hardware = 1;
 if (sock_flag(sk, SOCK_TIMESTAMPING_TX_SOFTWARE))
  shtx->software = 1;
 return 0;
}
