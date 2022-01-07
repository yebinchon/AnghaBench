
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_sock {int dummy; } ;


 int sysctl_tcp_frto ;
 int tcp_is_reno (struct tcp_sock const*) ;

__attribute__((used)) static int tcp_is_sackfrto(const struct tcp_sock *tp)
{
 return (sysctl_tcp_frto == 0x2) && !tcp_is_reno(tp);
}
