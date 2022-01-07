
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zdev_t ;
typedef int zbuf_t ;
typedef scalar_t__ u16_t ;
struct TYPE_2__ {scalar_t__ wlanMode; } ;


 scalar_t__ ZM_MODE_AP ;
 TYPE_1__* wd ;
 scalar_t__ zfApFindSta (int *,scalar_t__*) ;
 int zmw_declare_for_critical_section () ;
 int zmw_enter_critical_section (int *) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_leave_critical_section (int *) ;
 scalar_t__ zmw_rx_buf_readh (int *,int *,int) ;

u16_t zfAggGetSta(zdev_t* dev, zbuf_t* buf)
{
    u16_t id;
    u16_t dst[3];

    zmw_get_wlan_dev(dev);

    zmw_declare_for_critical_section();

    dst[0] = zmw_rx_buf_readh(dev, buf, 0);
    dst[1] = zmw_rx_buf_readh(dev, buf, 2);
    dst[2] = zmw_rx_buf_readh(dev, buf, 4);

    zmw_enter_critical_section(dev);

    if(wd->wlanMode == ZM_MODE_AP) {
        id = zfApFindSta(dev, dst);
    }
    else {
        id = 0;
    }
    zmw_leave_critical_section(dev);





    return id;
}
