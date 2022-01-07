
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_sock {int undo_retrans; scalar_t__ undo_marker; } ;


 scalar_t__ tcp_packet_delayed (struct tcp_sock*) ;

__attribute__((used)) static inline int tcp_may_undo(struct tcp_sock *tp)
{
 return tp->undo_marker && (!tp->undo_retrans || tcp_packet_delayed(tp));
}
