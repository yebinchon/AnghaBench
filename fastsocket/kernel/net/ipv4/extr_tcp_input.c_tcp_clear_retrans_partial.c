
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_sock {scalar_t__ undo_retrans; scalar_t__ undo_marker; scalar_t__ lost_out; scalar_t__ retrans_out; } ;



__attribute__((used)) static void tcp_clear_retrans_partial(struct tcp_sock *tp)
{
 tp->retrans_out = 0;
 tp->lost_out = 0;

 tp->undo_marker = 0;
 tp->undo_retrans = 0;
}
