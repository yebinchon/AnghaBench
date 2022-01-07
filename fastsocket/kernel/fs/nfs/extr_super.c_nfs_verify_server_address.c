
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct in6_addr {int dummy; } ;
struct sockaddr_in6 {struct in6_addr sin6_addr; } ;
struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;
struct sockaddr {int sa_family; } ;




 int INADDR_ANY ;
 int MOUNT ;
 int dfprintk (int ,char*) ;
 int htonl (int ) ;
 int ipv6_addr_any (struct in6_addr*) ;

__attribute__((used)) static int nfs_verify_server_address(struct sockaddr *addr)
{
 switch (addr->sa_family) {
 case 129: {
  struct sockaddr_in *sa = (struct sockaddr_in *)addr;
  return sa->sin_addr.s_addr != htonl(INADDR_ANY);
 }
 case 128: {
  struct in6_addr *sa = &((struct sockaddr_in6 *)addr)->sin6_addr;
  return !ipv6_addr_any(sa);
 }
 }

 dfprintk(MOUNT, "NFS: Invalid IP address specified\n");
 return 0;
}
