
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union svc_addr_u {int addr6; int addr; } ;
struct sockaddr_in6 {int sin6_family; int sin6_addr; } ;
struct sockaddr_in {int sin_family; int sin_addr; } ;
struct sockaddr {int dummy; } ;





__attribute__((used)) static void rpc_svcaddr2sockaddr(struct sockaddr *sa, unsigned short family, union svc_addr_u *svcaddr)
{
 switch (family) {
 case 129:
  ((struct sockaddr_in *)sa)->sin_family = 129;
  ((struct sockaddr_in *)sa)->sin_addr = svcaddr->addr;
  return;
 case 128:
  ((struct sockaddr_in6 *)sa)->sin6_family = 128;
  ((struct sockaddr_in6 *)sa)->sin6_addr = svcaddr->addr6;
  return;
 }
}
