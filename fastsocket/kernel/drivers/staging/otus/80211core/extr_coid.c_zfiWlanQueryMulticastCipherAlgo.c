
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zdev_t ;
typedef int u8_t ;
struct TYPE_3__ {int currentAuthMode; int* rsnIe; int encryMode; } ;
struct TYPE_4__ {TYPE_1__ sta; } ;


 int ZM_AES ;




 int ZM_TKIP ;
 TYPE_2__* wd ;
 int zmw_get_wlan_dev (int *) ;

u8_t zfiWlanQueryMulticastCipherAlgo(zdev_t *dev)
{
    zmw_get_wlan_dev(dev);

    switch( wd->sta.currentAuthMode )
    {
        case 129:
        case 130:
            if ( wd->sta.rsnIe[7] == 2 )
            {
                return ZM_TKIP;
            }
            else
            {
                return ZM_AES;
            }
            break;

        case 128:
        case 131:
            if ( wd->sta.rsnIe[11] == 2 )
            {
                return ZM_TKIP;
            }
            else
            {
                return ZM_AES;
            }
            break;

        default:
            return wd->sta.encryMode;
    }
}
