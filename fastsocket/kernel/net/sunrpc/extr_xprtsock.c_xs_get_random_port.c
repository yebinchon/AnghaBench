
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ net_random () ;
 unsigned short xprt_max_resvport ;
 unsigned short xprt_min_resvport ;

__attribute__((used)) static unsigned short xs_get_random_port(void)
{
 unsigned short range = xprt_max_resvport - xprt_min_resvport;
 unsigned short rand = (unsigned short) net_random() % range;
 return rand + xprt_min_resvport;
}
