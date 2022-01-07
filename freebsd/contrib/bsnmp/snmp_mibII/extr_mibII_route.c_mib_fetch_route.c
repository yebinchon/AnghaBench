
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct sroute {int dummy; } ;
typedef struct sroute u_char ;
struct sockaddr {int dummy; } ;
struct rt_msghdr {scalar_t__ rtm_type; int rtm_flags; int rtm_addrs; int rtm_msglen; } ;


 int AF_INET ;
 int NET_RT_DUMP ;
 struct sroute* RB_MIN (int ,int *) ;
 struct sroute* RB_NEXT (int ,int *,struct sroute*) ;
 int RB_REMOVE (int ,int *,struct sroute*) ;
 scalar_t__ ROUTE_UPDATE_INTERVAL ;
 size_t RTAX_DST ;
 size_t RTAX_GATEWAY ;
 int RTAX_MAX ;
 size_t RTAX_NETMASK ;
 int RTF_UP ;
 scalar_t__ RTM_GET ;
 int free (struct sroute*) ;
 scalar_t__ get_ticks () ;
 int mib_extract_addrs (int ,struct sroute*,struct sockaddr**) ;
 struct sroute* mib_fetch_rtab (int ,int ,int ,size_t*) ;
 int mib_sroute_process (struct rt_msghdr*,struct sockaddr*,struct sockaddr*,struct sockaddr*) ;
 int printf (char*,...) ;
 scalar_t__ route_tick ;
 scalar_t__ route_total ;
 int sroute_print (struct sroute*) ;
 int sroutes ;
 scalar_t__ this_tick ;

int
mib_fetch_route(void)
{
 u_char *rtab, *next;
 size_t len;
 struct sroute *r, *r1;
 struct rt_msghdr *rtm;
 struct sockaddr *addrs[RTAX_MAX];

 if (route_tick != 0 && route_tick + ROUTE_UPDATE_INTERVAL > this_tick)
  return (0);




 r = RB_MIN(sroutes, &sroutes);
 while (r != ((void*)0)) {
  r1 = RB_NEXT(sroutes, &sroutes, r);
  RB_REMOVE(sroutes, &sroutes, r);
  free(r);
  r = r1;
 }
 route_total = 0;

 if ((rtab = mib_fetch_rtab(AF_INET, NET_RT_DUMP, 0, &len)) == ((void*)0))
  return (-1);

 next = rtab;
 for (next = rtab; next < rtab + len; next += rtm->rtm_msglen) {
  rtm = (struct rt_msghdr *)(void *)next;
  if (rtm->rtm_type != RTM_GET ||
      !(rtm->rtm_flags & RTF_UP))
   continue;
  mib_extract_addrs(rtm->rtm_addrs, (u_char *)(rtm + 1), addrs);


  mib_sroute_process(rtm, addrs[RTAX_GATEWAY], addrs[RTAX_DST],
      addrs[RTAX_NETMASK]);
 }
 free(rtab);
 route_tick = get_ticks();

 return (0);
}
