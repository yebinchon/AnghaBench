
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int RecvLookaside; } ;
struct et131x_adapter {TYPE_1__ RxRing; } ;
struct TYPE_6__ {int * Packet; } ;
typedef TYPE_2__ MP_RFD ;


 int kmem_cache_free (int ,TYPE_2__*) ;

void et131x_rfd_resources_free(struct et131x_adapter *adapter, MP_RFD *pMpRfd)
{
 pMpRfd->Packet = ((void*)0);
 kmem_cache_free(adapter->RxRing.RecvLookaside, pMpRfd);
}
