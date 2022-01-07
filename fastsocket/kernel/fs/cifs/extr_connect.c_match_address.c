
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr_in6 {int sin6_scope_id; int sin6_addr; } ;
struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;
struct sockaddr {int sa_family; } ;
struct TCP_Server_Info {int srcaddr; int dstaddr; } ;




 int WARN_ON (int) ;
 int ipv6_addr_equal (int *,int *) ;
 int srcip_matches (struct sockaddr*,struct sockaddr*) ;

__attribute__((used)) static bool
match_address(struct TCP_Server_Info *server, struct sockaddr *addr,
       struct sockaddr *srcaddr)
{
 switch (addr->sa_family) {
 case 129: {
  struct sockaddr_in *addr4 = (struct sockaddr_in *)addr;
  struct sockaddr_in *srv_addr4 =
     (struct sockaddr_in *)&server->dstaddr;

  if (addr4->sin_addr.s_addr != srv_addr4->sin_addr.s_addr)
   return 0;
  break;
 }
 case 128: {
  struct sockaddr_in6 *addr6 = (struct sockaddr_in6 *)addr;
  struct sockaddr_in6 *srv_addr6 =
     (struct sockaddr_in6 *)&server->dstaddr;

  if (!ipv6_addr_equal(&addr6->sin6_addr,
         &srv_addr6->sin6_addr))
   return 0;
  if (addr6->sin6_scope_id != srv_addr6->sin6_scope_id)
   return 0;
  break;
 }
 default:
  WARN_ON(1);
  return 0;
 }

 if (!srcip_matches(srcaddr, (struct sockaddr *)&server->srcaddr))
  return 0;

 return 1;
}
