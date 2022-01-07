
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sack_ok; } ;
struct tcp_sock {TYPE_1__ rx_opt; } ;



__attribute__((used)) static void tcp_dsack_seen(struct tcp_sock *tp)
{
 tp->rx_opt.sack_ok |= 4;
}
