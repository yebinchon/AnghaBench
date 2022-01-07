
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t byChannelNumber; } ;
typedef int PVOID ;
typedef size_t BYTE ;


 TYPE_1__* sChannelTbl ;

BYTE CARDbyGetChannelNumber (PVOID pDeviceHandler, BYTE byChannelIndex)
{

    return(sChannelTbl[byChannelIndex].byChannelNumber);
}
