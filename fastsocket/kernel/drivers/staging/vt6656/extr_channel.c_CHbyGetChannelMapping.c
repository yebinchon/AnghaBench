
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t byChannelNumber; } ;
typedef size_t BYTE ;


 size_t CB_MAX_CHANNEL ;
 TYPE_1__* sChannelTbl ;

BYTE CHbyGetChannelMapping(BYTE byChannelNumber)
{
BYTE ii;
BYTE byCHMapping = 0;

    for (ii=1; ii<=CB_MAX_CHANNEL; ii++ ) {
        if ( sChannelTbl[ii].byChannelNumber == byChannelNumber ) {
            byCHMapping = ii;
        }
    }
    return byCHMapping;
}
