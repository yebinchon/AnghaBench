
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr_in {int sin_addr; } ;
struct sockaddr_dl {int sdl_alen; scalar_t__ sdl_nlen; scalar_t__ sdl_data; int sdl_index; } ;
struct TYPE_2__ {scalar_t__ rmx_expire; } ;
struct rt_msghdr {TYPE_1__ rtm_rmx; } ;
struct mibif {int dummy; } ;
struct mibarp {int flags; } ;


 int MIBARP_FOUND ;
 int MIBARP_PERM ;
 struct mibarp* mib_arp_create (struct mibif*,int ,scalar_t__,int ) ;
 struct mibarp* mib_find_arp (struct mibif*,int ) ;
 struct mibif* mib_find_if_sys (int ) ;

__attribute__((used)) static void
process_arp(const struct rt_msghdr *rtm, const struct sockaddr_dl *sdl,
    const struct sockaddr_in *sa)
{
 struct mibif *ifp;
 struct mibarp *at;


 if (sdl->sdl_alen == 0)
  return;
 if ((ifp = mib_find_if_sys(sdl->sdl_index)) == ((void*)0))
  return;

 if ((at = mib_find_arp(ifp, sa->sin_addr)) == ((void*)0) &&
     (at = mib_arp_create(ifp, sa->sin_addr,
     sdl->sdl_data + sdl->sdl_nlen, sdl->sdl_alen)) == ((void*)0))
  return;

 if (rtm->rtm_rmx.rmx_expire == 0)
  at->flags |= MIBARP_PERM;
 else
  at->flags &= ~MIBARP_PERM;
 at->flags |= MIBARP_FOUND;
}
