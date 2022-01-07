
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zdev_t ;
typedef int u8_t ;
struct TYPE_3__ {int staWmeEnabled; int staWmeQosInfo; } ;
struct TYPE_4__ {TYPE_1__ ws; } ;


 TYPE_2__* wd ;
 int zmw_get_wlan_dev (int *) ;

void zfiWlanSetStaWme(zdev_t* dev, u8_t enable, u8_t uapsdInfo)
{
    zmw_get_wlan_dev(dev);

    wd->ws.staWmeEnabled = enable & 0x3;
    if ((enable & 0x2) != 0)
    {
        wd->ws.staWmeQosInfo = uapsdInfo & 0x6f;
    }
    else
    {
        wd->ws.staWmeQosInfo = 0;
    }
}
