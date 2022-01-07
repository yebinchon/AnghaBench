
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ttl ;


 int LOG_ERR ;
 int ip_defttl ;
 int sysctlbyname (char*,int*,size_t*,int*,int) ;
 int syslog (int ,char*) ;

__attribute__((used)) static int
ip_setttl(int ttl, int *old)
{
 size_t olen;

 olen = sizeof(*old);
 if (sysctlbyname("net.inet.ip.ttl", old, old ? &olen : ((void*)0),
     &ttl, sizeof(ttl)) == -1) {
  syslog(LOG_ERR, "set net.inet.ip.ttl: %m");
  return (-1);
 }
 ip_defttl = ttl;
 return (0);
}
