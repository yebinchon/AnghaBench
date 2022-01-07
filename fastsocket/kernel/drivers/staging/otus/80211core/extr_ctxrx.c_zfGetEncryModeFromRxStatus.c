
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8_t ;
struct TYPE_3__ {int SAIndex; int DAIndex; } ;
struct TYPE_4__ {TYPE_1__ Data; } ;
struct zsAdditionInfo {TYPE_2__ Tail; } ;
u8_t zfGetEncryModeFromRxStatus(struct zsAdditionInfo* addInfo)
{
    u8_t securityByte;
    u8_t encryMode;

    securityByte = (addInfo->Tail.Data.SAIndex & 0xc0) >> 4;
    securityByte |= (addInfo->Tail.Data.DAIndex & 0xc0) >> 6;

    switch( securityByte )
    {
        case 132:
        case 128:
        case 130:
        case 129:



        case 131:
        case 134:

            encryMode = securityByte;
            break;

        default:

            if ( (securityByte & 0xf8) == 0x08 )
            {

            }

            encryMode = 132;
            break;
    }

    return encryMode;
}
