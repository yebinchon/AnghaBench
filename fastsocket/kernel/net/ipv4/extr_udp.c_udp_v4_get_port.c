
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;


 int ipv4_rcv_saddr_equal ;
 int udp_lib_get_port (struct sock*,unsigned short,int ) ;

int udp_v4_get_port(struct sock *sk, unsigned short snum)
{
 return udp_lib_get_port(sk, snum, ipv4_rcv_saddr_equal);
}
