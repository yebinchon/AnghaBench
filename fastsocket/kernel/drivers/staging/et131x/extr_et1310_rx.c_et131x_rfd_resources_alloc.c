
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct et131x_adapter {int dummy; } ;
struct TYPE_3__ {int * Packet; } ;
typedef TYPE_1__ MP_RFD ;



int et131x_rfd_resources_alloc(struct et131x_adapter *adapter, MP_RFD *pMpRfd)
{
 pMpRfd->Packet = ((void*)0);

 return 0;
}
