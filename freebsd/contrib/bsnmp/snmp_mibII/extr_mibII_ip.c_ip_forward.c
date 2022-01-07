
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int forw ;


 int LOG_ERR ;
 int ip_forwarding ;
 int sysctlbyname (char*,int*,size_t*,int*,int) ;
 int syslog (int ,char*) ;

__attribute__((used)) static int
ip_forward(int forw, int *old)
{
 size_t olen;

 olen = sizeof(*old);
 if (sysctlbyname("net.inet.ip.forwarding", old, old ? &olen : ((void*)0),
     &forw, sizeof(forw)) == -1) {
  syslog(LOG_ERR, "set net.inet.ip.forwarding: %m");
  return (-1);
 }
 ip_forwarding = forw;
 return (0);
}
