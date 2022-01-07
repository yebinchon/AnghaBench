
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ a6; int a4; } ;
typedef TYPE_2__ xfrm_address_t ;
struct sockaddr_in6 {int sin6_family; int sin6_scope_id; int sin6_addr; int sin6_flowinfo; void* sin6_port; } ;
struct TYPE_4__ {int s_addr; } ;
struct sockaddr_in {int sin_family; int sin_zero; TYPE_1__ sin_addr; void* sin_port; } ;
struct sockaddr {int dummy; } ;
struct in6_addr {int dummy; } ;
typedef void* __be16 ;




 int ipv6_addr_copy (int *,struct in6_addr*) ;
 int memset (int ,int ,int) ;

__attribute__((used)) static unsigned int pfkey_sockaddr_fill(xfrm_address_t *xaddr, __be16 port,
           struct sockaddr *sa,
           unsigned short family)
{
 switch (family) {
 case 129:
     {
  struct sockaddr_in *sin = (struct sockaddr_in *)sa;
  sin->sin_family = 129;
  sin->sin_port = port;
  sin->sin_addr.s_addr = xaddr->a4;
  memset(sin->sin_zero, 0, sizeof(sin->sin_zero));
  return 32;
     }
 }
 return 0;
}
