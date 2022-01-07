
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zdev_t ;
typedef int zbuf_t ;
typedef size_t u16_t ;
struct TYPE_3__ {int* wpaLen; int ** wpaIe; } ;
struct TYPE_4__ {TYPE_1__ ap; } ;


 TYPE_2__* wd ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_tx_buf_writeb (int *,int *,int ,int ) ;

u16_t zfMmAddIeWpa(zdev_t* dev, zbuf_t* buf, u16_t offset, u16_t apId)
{

    int i;

    zmw_get_wlan_dev(dev);






    for(i = 0; i < wd->ap.wpaLen[apId]; i++)
    {

        zmw_tx_buf_writeb(dev, buf, offset++, wd->ap.wpaIe[apId][i]);
    }

    return offset;
}
