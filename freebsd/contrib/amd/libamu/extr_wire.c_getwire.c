
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u_long ;
struct TYPE_6__ {scalar_t__ s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;
struct TYPE_8__ {scalar_t__ sa_family; } ;
struct ifreq {int ifr_flags; TYPE_5__ ifr_addr; } ;
struct ifconf {int ifc_len; char* ifc_buf; } ;
typedef int ifrpool ;
typedef char* caddr_t ;
typedef int buf ;
struct TYPE_7__ {char* ip_net_name; char* ip_net_num; struct TYPE_7__* ip_next; } ;
typedef TYPE_2__ addrlist ;


 scalar_t__ AF_INET ;
 int GFBUFLEN ;
 int IFF_POINTOPOINT ;
 int IFF_RUNNING ;
 int IFF_UP ;
 int INADDR_LOOPBACK ;
 char* NO_SUBNET ;
 int S2IN (TYPE_5__*) ;
 int SIOCGIFCONF ;
 int SIOCGIFFLAGS ;
 int SIOCGIFNETMASK ;
 int SIZE (struct ifreq*) ;
 int SOCK_DGRAM ;
 int XLOG_ERROR ;
 int close (int) ;
 TYPE_2__* getwire_lookup (scalar_t__,int,int) ;
 scalar_t__ htonl (int ) ;
 scalar_t__ ioctl (int,int ,char*) ;
 TYPE_2__* localnets ;
 int memcpy (struct ifreq*,char*,int) ;
 int memset (char*,int ,int) ;
 int plog (int ,char*) ;
 int socket (scalar_t__,int ,int ) ;

void
getwire(char **name1, char **number1)
{
  struct ifconf ifc;
  struct ifreq *ifr, ifrpool;
  caddr_t cp, cplim;
  int fd = -1;
  u_long address;
  addrlist *al = ((void*)0), *tail = ((void*)0);
  char buf[GFBUFLEN];



  plog(XLOG_ERROR, "getwire unable to get interface flags");
  localnets = ((void*)0);
  return;





  if ((fd = socket(AF_INET, SOCK_DGRAM, 0)) < 0)
    goto out;




  memset(&buf[0], 0, GFBUFLEN);
  ifc.ifc_len = sizeof(buf);
  ifc.ifc_buf = buf;




  if (ioctl(fd, SIOCGIFCONF, (caddr_t) & ifc) < 0)
    goto out;




  cplim = buf + ifc.ifc_len;
  for (cp = buf; cp < cplim; ) {
    memcpy(&ifrpool, cp, sizeof(ifrpool));
    ifr = &ifrpool;
    cp += SIZE(ifr);

    if (ifr->ifr_addr.sa_family != AF_INET)
      continue;

    address = ((struct sockaddr_in *) &ifr->ifr_addr)->sin_addr.s_addr;




    if (ioctl(fd, SIOCGIFFLAGS, (caddr_t) ifr) < 0)
      continue;





    if (address == htonl(INADDR_LOOPBACK))
      continue;
    if ((ifr->ifr_flags & IFF_RUNNING) == 0 ||
 (ifr->ifr_flags & IFF_UP) == 0)
      continue;

    if ((ifr->ifr_flags & IFF_POINTOPOINT) == 0) {



      if (ioctl(fd, SIOCGIFNETMASK, (caddr_t) ifr) < 0)
 continue;

      al = getwire_lookup(address, S2IN(&ifr->ifr_addr), 0);
    } else
      al = getwire_lookup(address, 0xffffffff, 1);


    if (!localnets) {
      localnets = tail = al;
      tail->ip_next = ((void*)0);
    } else {
      tail->ip_next = al;
      tail = al;
    }
  }

out:
  if (fd >= 0)
    close(fd);
  if (localnets) {
    *name1 = localnets->ip_net_name;
    *number1 = localnets->ip_net_num;
  } else {
    *name1 = NO_SUBNET;
    *number1 = "0.0.0.0";
  }
}
