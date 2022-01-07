
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
struct mibrcvaddr {int flags; } ;
struct TYPE_3__ {int ifi_type; } ;
struct TYPE_4__ {int ifmd_flags; TYPE_1__ ifmd_data; } ;
struct mibif {int index; TYPE_2__ mib; } ;


 int IFF_BROADCAST ;




 int MIBRCVADDR_BCAST ;
 int * mib_find_rcvaddr (int ,int*,int) ;
 struct mibrcvaddr* mib_rcvaddr_create (struct mibif*,int*,int) ;

__attribute__((used)) static void
check_llbcast(struct mibif *ifp)
{
 static u_char ether_bcast[6] = { 0xff, 0xff, 0xff, 0xff, 0xff, 0xff };
 struct mibrcvaddr *rcv;

 if (!(ifp->mib.ifmd_flags & IFF_BROADCAST))
  return;

 switch (ifp->mib.ifmd_data.ifi_type) {

   case 131:
   case 130:
   case 129:
   case 128:
  if (mib_find_rcvaddr(ifp->index, ether_bcast, 6) == ((void*)0) &&
      (rcv = mib_rcvaddr_create(ifp, ether_bcast, 6)) != ((void*)0))
   rcv->flags |= MIBRCVADDR_BCAST;
  break;
 }
}
