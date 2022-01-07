
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zdev_t ;
typedef int zbuf_t ;
typedef int u8_t ;
typedef int u16_t ;
struct TYPE_3__ {int protectedObss; } ;
struct TYPE_4__ {TYPE_1__ ap; } ;


 int ZM_LV_3 ;
 int ZM_WLAN_EID_ERP ;
 int ZM_WLAN_USE_PROTECTION_BIT ;
 TYPE_2__* wd ;
 int zfFindElement (int *,int *,int ) ;
 int zm_msg0_mm (int ,char*) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_rx_buf_readb (int *,int *,int) ;

void zfApProcessBeacon(zdev_t* dev, zbuf_t* buf)
{
    u16_t offset;
    u8_t ch;

    zmw_get_wlan_dev(dev);

    zm_msg0_mm(ZM_LV_3, "Rx beacon");


    if ((offset = zfFindElement(dev, buf, ZM_WLAN_EID_ERP)) == 0xffff)
    {

        wd->ap.protectedObss++;
        return;
    }

    ch = zmw_rx_buf_readb(dev, buf, offset+2);
    if ((ch & ZM_WLAN_USE_PROTECTION_BIT) == ZM_WLAN_USE_PROTECTION_BIT)
    {

        wd->ap.protectedObss = 1;
    }

    return;
}
