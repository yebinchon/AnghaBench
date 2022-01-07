
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfrm_address_t ;
struct sockaddr {int dummy; } ;
struct sadb_address {int dummy; } ;


 int pfkey_sockaddr_extract (struct sockaddr*,int *) ;

__attribute__((used)) static
int pfkey_sadb_addr2xfrm_addr(struct sadb_address *addr, xfrm_address_t *xaddr)
{
 return pfkey_sockaddr_extract((struct sockaddr *)(addr + 1),
          xaddr);
}
