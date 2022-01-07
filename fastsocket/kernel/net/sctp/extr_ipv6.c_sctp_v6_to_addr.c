
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int sin6_addr; int sin6_port; } ;
struct TYPE_3__ {int sa_family; } ;
union sctp_addr {TYPE_2__ v6; TYPE_1__ sa; } ;
struct in6_addr {int dummy; } ;
typedef int __be16 ;


 int AF_INET6 ;
 int ipv6_addr_copy (int *,struct in6_addr*) ;

__attribute__((used)) static void sctp_v6_to_addr(union sctp_addr *addr, struct in6_addr *saddr,
         __be16 port)
{
 addr->sa.sa_family = AF_INET6;
 addr->v6.sin6_port = port;
 ipv6_addr_copy(&addr->v6.sin6_addr, saddr);
}
