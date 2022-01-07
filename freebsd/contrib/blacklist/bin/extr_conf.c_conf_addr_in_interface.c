
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr_storage {scalar_t__ ss_family; } ;
struct ifaddrs {int ifa_flags; TYPE_1__* ifa_addr; int ifa_name; struct ifaddrs* ifa_next; } ;
struct TYPE_2__ {scalar_t__ sa_family; } ;




 int IFF_UP ;
 int LOG_ERR ;
 char* SIF_NAME (struct sockaddr_storage const*) ;
 int conf_inet_eq (TYPE_1__*,struct sockaddr_storage const*,int) ;
 struct ifaddrs* ifas ;
 int lfun (int ,char*,scalar_t__) ;
 scalar_t__ strcmp (int ,char const*) ;
 int stub1 (int ,char*,scalar_t__) ;

__attribute__((used)) static int
conf_addr_in_interface(const struct sockaddr_storage *s1,
    const struct sockaddr_storage *s2, int mask)
{
 const char *name = SIF_NAME(s2);
 const struct ifaddrs *ifa;

 for (ifa = ifas; ifa; ifa = ifa->ifa_next) {
  if ((ifa->ifa_flags & IFF_UP) == 0)
   continue;

  if (strcmp(ifa->ifa_name, name) != 0)
   continue;

  if (s1->ss_family != ifa->ifa_addr->sa_family)
   continue;

  bool eq;
  switch (s1->ss_family) {
  case 129:
  case 128:
   eq = conf_inet_eq(ifa->ifa_addr, s1, mask);
   break;
  default:
   (*lfun)(LOG_ERR, "Bad family %u", s1->ss_family);
   continue;
  }
  if (eq)
   return 1;
 }
 return 0;
}
