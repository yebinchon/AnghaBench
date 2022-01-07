
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_vs_protocol {int dummy; } ;


 int tcp_state_table ;
 int tcp_states ;
 int tcp_states_dos ;

__attribute__((used)) static void tcp_timeout_change(struct ip_vs_protocol *pp, int flags)
{
 int on = (flags & 1);







 tcp_state_table = (on? tcp_states_dos : tcp_states);
}
