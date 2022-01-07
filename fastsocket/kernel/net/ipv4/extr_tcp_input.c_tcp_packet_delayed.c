
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ rcv_tsecr; scalar_t__ saw_tstamp; } ;
struct tcp_sock {int retrans_stamp; TYPE_1__ rx_opt; } ;


 scalar_t__ before (scalar_t__,int ) ;

__attribute__((used)) static inline int tcp_packet_delayed(struct tcp_sock *tp)
{
 return !tp->retrans_stamp ||
  (tp->rx_opt.saw_tstamp && tp->rx_opt.rcv_tsecr &&
   before(tp->rx_opt.rcv_tsecr, tp->retrans_stamp));
}
