
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;


 int LINUX_MIB_TCPMEMORYPRESSURES ;
 int NET_INC_STATS (int ,int ) ;
 int sock_net (struct sock*) ;
 int tcp_memory_pressure ;

void tcp_enter_memory_pressure(struct sock *sk)
{
 if (!tcp_memory_pressure) {
  NET_INC_STATS(sock_net(sk), LINUX_MIB_TCPMEMORYPRESSURES);
  tcp_memory_pressure = 1;
 }
}
