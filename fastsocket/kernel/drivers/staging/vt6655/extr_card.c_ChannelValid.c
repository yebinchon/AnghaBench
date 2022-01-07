
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_2__ {int bValid; } ;
typedef int BOOL ;


 size_t CB_MAX_CHANNEL ;
 int FALSE ;
 TYPE_1__* sChannelTbl ;

BOOL
ChannelValid(UINT CountryCode, UINT ChannelIndex)
{
    BOOL bValid;

    bValid = FALSE;



    if ((ChannelIndex > CB_MAX_CHANNEL) ||
        (ChannelIndex == 0))
    {
        bValid = FALSE;
        goto exit;
    }

    bValid = sChannelTbl[ChannelIndex].bValid;

exit:
    return (bValid);

}
