
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int zdev_t ;
typedef int zbuf_t ;
typedef int u8_t ;
typedef int u16_t ;
struct TYPE_11__ {int Length; int ElementID; } ;
struct TYPE_12__ {int* Byte; TYPE_4__ Data; } ;
struct TYPE_13__ {TYPE_5__ HTCap; } ;
struct TYPE_8__ {int Length; int ElementID; } ;
struct TYPE_9__ {int* Byte; TYPE_1__ Data; } ;
struct TYPE_10__ {TYPE_2__ HTCap; } ;
struct TYPE_14__ {scalar_t__ wlanMode; TYPE_6__ sta; TYPE_3__ ap; } ;


 scalar_t__ ZM_MODE_AP ;
 int ZM_WLAN_EID_WPA_IE ;
 TYPE_7__* wd ;
 int zmw_buf_writeb (int *,int *,int ,int) ;
 int zmw_get_wlan_dev (int *) ;

u16_t zfMmAddHTCapability(zdev_t* dev, zbuf_t* buf, u16_t offset)
{
    u8_t OUI[3] = {0x0,0x90,0x4C};
    u16_t i;

    zmw_get_wlan_dev(dev);


    zmw_buf_writeb(dev, buf, offset++, ZM_WLAN_EID_WPA_IE);

    if ( wd->wlanMode == ZM_MODE_AP )
    {

        zmw_buf_writeb(dev, buf, offset++, wd->ap.HTCap.Data.Length + 4);


        for (i = 0; i < 3; i++)
        {
            zmw_buf_writeb(dev, buf, offset++, OUI[i]);
        }


        zmw_buf_writeb(dev, buf, offset++, wd->ap.HTCap.Data.ElementID);


        for (i = 0; i < 26; i++)
        {
            zmw_buf_writeb(dev, buf, offset++, wd->ap.HTCap.Byte[i+2]);
        }
    }
    else
    {

        zmw_buf_writeb(dev, buf, offset++, wd->sta.HTCap.Data.Length + 4);


        for (i = 0; i < 3; i++)
        {
            zmw_buf_writeb(dev, buf, offset++, OUI[i]);
        }


        zmw_buf_writeb(dev, buf, offset++, wd->sta.HTCap.Data.ElementID);


        for (i = 0; i < 26; i++)
        {
            zmw_buf_writeb(dev, buf, offset++, wd->sta.HTCap.Byte[i+2]);
        }
    }

    return offset;
}
