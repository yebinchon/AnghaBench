#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_long ;
struct TYPE_6__ {scalar_t__ s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;
struct TYPE_8__ {scalar_t__ sa_family; } ;
struct ifreq {int ifr_flags; TYPE_5__ ifr_addr; } ;
struct ifconf {int ifc_len; char* ifc_buf; } ;
typedef  int /*<<< orphan*/  ifrpool ;
typedef  char* caddr_t ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_7__ {char* ip_net_name; char* ip_net_num; struct TYPE_7__* ip_next; } ;
typedef  TYPE_2__ addrlist ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 int GFBUFLEN ; 
 int IFF_POINTOPOINT ; 
 int IFF_RUNNING ; 
 int IFF_UP ; 
 int /*<<< orphan*/  INADDR_LOOPBACK ; 
 char* NO_SUBNET ; 
 int FUNC0 (TYPE_5__*) ; 
 int /*<<< orphan*/  SIOCGIFCONF ; 
 int /*<<< orphan*/  SIOCGIFFLAGS ; 
 int /*<<< orphan*/  SIOCGIFNETMASK ; 
 int /*<<< orphan*/  FUNC1 (struct ifreq*) ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  XLOG_ERROR ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 TYPE_2__* FUNC3 (scalar_t__,int,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int,int /*<<< orphan*/ ,char*) ; 
 TYPE_2__* localnets ; 
 int /*<<< orphan*/  FUNC6 (struct ifreq*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int FUNC9 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC10(char **name1, char **number1)
{
  struct ifconf ifc;
  struct ifreq *ifr, ifrpool;
  caddr_t cp, cplim;
  int fd = -1;
  u_long address;
  addrlist *al = NULL, *tail = NULL;
  char buf[GFBUFLEN];

#ifndef SIOCGIFFLAGS
  /* if cannot get interface flags, return nothing */
  FUNC8(XLOG_ERROR, "getwire unable to get interface flags");
  localnets = NULL;
  return;
#endif /* not SIOCGIFFLAGS */

  /*
   * Get suitable socket
   */
  if ((fd = FUNC9(AF_INET, SOCK_DGRAM, 0)) < 0)
    goto out;

  /*
   * Fill in ifconf details
   */
  FUNC7(&buf[0], 0, GFBUFLEN);
  ifc.ifc_len = sizeof(buf);
  ifc.ifc_buf = buf;

  /*
   * Get network interface configurations
   */
  if (FUNC5(fd, SIOCGIFCONF, (caddr_t) & ifc) < 0)
    goto out;

  /*
   * Upper bound on array
   */
  cplim = buf + ifc.ifc_len;

  /*
   * This is some magic to cope with both "traditional" and the
   * new 4.4BSD-style struct sockaddrs.  The new structure has
   * variable length and a size field to support longer addresses.
   * AF_LINK is a new definition for 4.4BSD.
   */

  /*
   * Scan the list looking for a suitable interface
   */
  for (cp = buf; cp < cplim; /* increment in the loop body */) {
    FUNC6(&ifrpool, cp, sizeof(ifrpool));
    ifr = &ifrpool;
    cp += FUNC1(ifr);

    if (ifr->ifr_addr.sa_family != AF_INET)
      continue;

    address = ((struct sockaddr_in *) &ifr->ifr_addr)->sin_addr.s_addr;

    /*
     * Get interface flags
     */
    if (FUNC5(fd, SIOCGIFFLAGS, (caddr_t) ifr) < 0)
      continue;

    /*
     * If the interface is the loopback, or it's not running,
     * then ignore it.
     */
    if (address == FUNC4(INADDR_LOOPBACK))
      continue;
    /*
     * Fix for 0.0.0.0 loopback on SunOS 3.X which defines IFF_ROUTE
     * instead of IFF_LOOPBACK.
     */
#ifdef IFF_ROUTE
    if (ifr->ifr_flags == (IFF_UP|IFF_RUNNING))
      continue;
#endif /* IFF_ROUTE */

    /* if the interface is not UP or not RUNNING, skip it */
    if ((ifr->ifr_flags & IFF_RUNNING) == 0 ||
	(ifr->ifr_flags & IFF_UP) == 0)
      continue;

    if ((ifr->ifr_flags & IFF_POINTOPOINT) == 0) {
      /*
       * Get the netmask of this interface
       */
      if (FUNC5(fd, SIOCGIFNETMASK, (caddr_t) ifr) < 0)
	continue;

      al = FUNC3(address, FUNC0(&ifr->ifr_addr), 0);
    } else
      al = FUNC3(address, 0xffffffff, 1);

    /* append to the end of the list */
    if (!localnets) {
      localnets = tail = al;
      tail->ip_next = NULL;
    } else {
      tail->ip_next = al;
      tail = al;
    }
  }

out:
  if (fd >= 0)
    FUNC2(fd);
  if (localnets) {
    *name1 = localnets->ip_net_name;
    *number1 = localnets->ip_net_num;
  } else {
    *name1 = NO_SUBNET;
    *number1 = "0.0.0.0";
  }
}