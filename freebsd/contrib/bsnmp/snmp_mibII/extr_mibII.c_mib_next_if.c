
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mibif {int dummy; } ;


 struct mibif* TAILQ_NEXT (struct mibif const*,int ) ;
 int link ;

struct mibif *
mib_next_if(const struct mibif *ifp)
{
 return (TAILQ_NEXT(ifp, link));
}
