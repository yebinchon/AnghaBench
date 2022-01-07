
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mibarp {int dummy; } ;


 int TAILQ_REMOVE (int *,struct mibarp*,int ) ;
 int free (struct mibarp*) ;
 int link ;
 int mibarp_list ;

void
mib_arp_delete(struct mibarp *at)
{
 TAILQ_REMOVE(&mibarp_list, at, link);
 free(at);
}
