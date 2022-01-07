
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifaddrs {int ifa_name; struct ifaddrs* ifa_next; } ;


 struct ifaddrs* ifas ;
 scalar_t__ strcmp (int ,char const*) ;

__attribute__((used)) static int
conf_is_interface(const char *name)
{
 const struct ifaddrs *ifa;

 for (ifa = ifas; ifa; ifa = ifa->ifa_next)
  if (strcmp(ifa->ifa_name, name) == 0)
   return 1;
 return 0;
}
