
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifaddrs {int dummy; } ;


 int freeifaddrs (struct ifaddrs*) ;
 int getifaddrs (struct ifaddrs**) ;
 struct ifaddrs* ifas ;

__attribute__((used)) static void
update_interfaces(void)
{
 struct ifaddrs *oifas, *nifas;

 if (getifaddrs(&nifas) == -1)
  return;

 oifas = ifas;
 ifas = nifas;

 if (oifas)
  freeifaddrs(oifas);
}
