
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in6 {int sin6_port; } ;
struct sockaddr_in {int sin_port; } ;
struct sockaddr {int sa_family; } ;




 int PROT_SOCK ;
 int ntohs (int ) ;

int svc_port_is_privileged(struct sockaddr *sin)
{
 switch (sin->sa_family) {
 case 129:
  return ntohs(((struct sockaddr_in *)sin)->sin_port)
   < PROT_SOCK;
 case 128:
  return ntohs(((struct sockaddr_in6 *)sin)->sin6_port)
   < PROT_SOCK;
 default:
  return 0;
 }
}
