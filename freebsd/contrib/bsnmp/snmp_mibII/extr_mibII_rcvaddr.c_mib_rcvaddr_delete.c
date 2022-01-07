
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mibrcvaddr {int dummy; } ;


 int TAILQ_REMOVE (int *,struct mibrcvaddr*,int ) ;
 int free (struct mibrcvaddr*) ;
 int link ;
 int mibrcvaddr_list ;

void
mib_rcvaddr_delete(struct mibrcvaddr *rcv)
{
 TAILQ_REMOVE(&mibrcvaddr_list, rcv, link);
 free(rcv);
}
