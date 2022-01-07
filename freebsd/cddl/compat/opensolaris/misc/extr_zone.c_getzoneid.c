
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zoneid_t ;
typedef int jailid ;


 int assert (int) ;
 int sysctlbyname (char*,int*,size_t*,int *,int ) ;

zoneid_t
getzoneid(void)
{
 size_t size;
 int jailid;


 size = sizeof(jailid);
 if (sysctlbyname("security.jail.jailed", &jailid, &size, ((void*)0), 0) == -1)
  assert(!"No security.jail.jailed sysctl!");
 return ((zoneid_t)jailid);
}
