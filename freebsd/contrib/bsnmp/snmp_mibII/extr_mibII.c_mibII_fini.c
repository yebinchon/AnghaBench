
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int close (int) ;
 int fd_deselect (int *) ;
 int ifmib_reg ;
 int ipForward_reg ;
 int ipmib_reg ;
 int * mibII_poll_timer ;
 int mib_netsock ;
 int or_unregister (int ) ;
 int route ;
 int * route_fd ;
 int tcpmib_reg ;
 int timer_stop (int *) ;
 int udpmib_reg ;

__attribute__((used)) static int
mibII_fini(void)
{
 if (mibII_poll_timer != ((void*)0) ) {
  timer_stop(mibII_poll_timer);
  mibII_poll_timer = ((void*)0);
 }

 if (route_fd != ((void*)0))
  fd_deselect(route_fd);
 if (route != -1)
  (void)close(route);
 if (mib_netsock != -1)
  (void)close(mib_netsock);


 or_unregister(ipForward_reg);
 or_unregister(udpmib_reg);
 or_unregister(tcpmib_reg);
 or_unregister(ipmib_reg);
 or_unregister(ifmib_reg);

 return (0);
}
