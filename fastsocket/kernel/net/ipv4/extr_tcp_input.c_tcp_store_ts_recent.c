
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ts_recent_stamp; int rcv_tsval; int ts_recent; } ;
struct tcp_sock {TYPE_1__ rx_opt; } ;


 int get_seconds () ;

__attribute__((used)) static inline void tcp_store_ts_recent(struct tcp_sock *tp)
{
 tp->rx_opt.ts_recent = tp->rx_opt.rcv_tsval;
 tp->rx_opt.ts_recent_stamp = get_seconds();
}
