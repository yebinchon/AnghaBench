
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mibif {int name; } ;
struct ifreq {int ifr_flags; int ifr_name; } ;


 int IFF_UP ;
 int LOG_ERR ;
 int SIOCGIFFLAGS ;
 int SIOCSIFFLAGS ;
 int ioctl (int ,int ,struct ifreq*) ;
 int mib_fetch_ifmib (struct mibif*) ;
 int mib_netsock ;
 int strlcpy (int ,int ,int) ;
 int syslog (int ,char*,int ) ;

int
mib_if_admin(struct mibif *ifp, int up)
{
 struct ifreq ifr;

 strlcpy(ifr.ifr_name, ifp->name, sizeof(ifr.ifr_name));
 if (ioctl(mib_netsock, SIOCGIFFLAGS, &ifr) == -1) {
  syslog(LOG_ERR, "SIOCGIFFLAGS(%s): %m", ifp->name);
  return (-1);
 }
 if (up)
  ifr.ifr_flags |= IFF_UP;
 else
  ifr.ifr_flags &= ~IFF_UP;
 if (ioctl(mib_netsock, SIOCSIFFLAGS, &ifr) == -1) {
  syslog(LOG_ERR, "SIOCSIFFLAGS(%s): %m", ifp->name);
  return (-1);
 }

 (void)mib_fetch_ifmib(ifp);

 return (0);
}
