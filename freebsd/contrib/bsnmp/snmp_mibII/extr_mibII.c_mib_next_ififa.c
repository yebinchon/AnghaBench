
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mibifa {scalar_t__ ifindex; } ;


 struct mibifa* TAILQ_NEXT (struct mibifa*,int ) ;
 int link ;

struct mibifa *
mib_next_ififa(struct mibifa *ifa0)
{
 struct mibifa *ifa;

 ifa = ifa0;
 while ((ifa = TAILQ_NEXT(ifa, link)) != ((void*)0))
  if (ifa->ifindex == ifa0->ifindex)
   return (ifa);
 return (((void*)0));
}
