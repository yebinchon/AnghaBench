
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sin6_addr; } ;
union sctp_addr {TYPE_1__ v6; } ;


 int ipv6_addr_any (int *) ;

__attribute__((used)) static int sctp_v6_is_any(const union sctp_addr *addr)
{
 return ipv6_addr_any(&addr->v6.sin6_addr);
}
