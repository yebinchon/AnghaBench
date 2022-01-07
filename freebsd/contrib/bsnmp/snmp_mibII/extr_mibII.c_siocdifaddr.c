
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_addr {int dummy; } ;
struct sockaddr_in {int sin_len; struct in_addr sin_addr; int sin_family; } ;
struct ifreq {int ifr_addr; int ifr_name; } ;
typedef int delreq ;


 int AF_INET ;
 int SIOCDIFADDR ;
 int ioctl (int ,int ,struct ifreq*) ;
 int memset (struct ifreq*,int ,int) ;
 int mib_netsock ;
 int strlcpy (int ,char const*,int) ;

__attribute__((used)) static int
siocdifaddr(const char *ifname, struct in_addr addr)
{
 struct ifreq delreq;
 struct sockaddr_in *sa;

 memset(&delreq, 0, sizeof(delreq));
 strlcpy(delreq.ifr_name, ifname, sizeof(delreq.ifr_name));
 sa = (struct sockaddr_in *)(void *)&delreq.ifr_addr;
 sa->sin_family = AF_INET;
 sa->sin_len = sizeof(*sa);
 sa->sin_addr = addr;

 return (ioctl(mib_netsock, SIOCDIFADDR, &delreq));
}
