
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mibifa {int dummy; } ;


 int TAILQ_REMOVE (int *,struct mibifa*,int ) ;
 int free (struct mibifa*) ;
 int link ;
 int mibifa_list ;

__attribute__((used)) static void
destroy_ifa(struct mibifa *ifa)
{
 TAILQ_REMOVE(&mibifa_list, ifa, link);
 free(ifa);
}
