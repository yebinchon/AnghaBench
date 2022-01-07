
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ resvport; } ;
struct sock_xprt {unsigned short srcport; TYPE_1__ xprt; } ;


 unsigned short xs_get_random_port () ;

__attribute__((used)) static unsigned short xs_get_srcport(struct sock_xprt *transport)
{
 unsigned short port = transport->srcport;

 if (port == 0 && transport->xprt.resvport)
  port = xs_get_random_port();
 return port;
}
