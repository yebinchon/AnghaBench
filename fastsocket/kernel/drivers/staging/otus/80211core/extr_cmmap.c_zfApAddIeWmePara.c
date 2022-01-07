
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zdev_t ;
typedef int zbuf_t ;
typedef int u16_t ;
struct TYPE_3__ {scalar_t__ uapsdEnabled; } ;
struct TYPE_4__ {TYPE_1__ ap; } ;


 int ZM_WLAN_EID_WIFI_IE ;
 TYPE_2__* wd ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_tx_buf_writeb (int *,int *,int ,int) ;

u16_t zfApAddIeWmePara(zdev_t* dev, zbuf_t* buf, u16_t offset, u16_t vap)
{
    zmw_get_wlan_dev(dev);


    zmw_tx_buf_writeb(dev, buf, offset++, ZM_WLAN_EID_WIFI_IE);


    zmw_tx_buf_writeb(dev, buf, offset++, 24);


    zmw_tx_buf_writeb(dev, buf, offset++, 0x00);
    zmw_tx_buf_writeb(dev, buf, offset++, 0x50);
    zmw_tx_buf_writeb(dev, buf, offset++, 0xF2);
    zmw_tx_buf_writeb(dev, buf, offset++, 0x02);
    zmw_tx_buf_writeb(dev, buf, offset++, 0x01);
    zmw_tx_buf_writeb(dev, buf, offset++, 0x01);


    if (wd->ap.uapsdEnabled)
    {
        zmw_tx_buf_writeb(dev, buf, offset++, 0x81);
    }
    else
    {
    zmw_tx_buf_writeb(dev, buf, offset++, 0x01);
    }


    zmw_tx_buf_writeb(dev, buf, offset++, 0x00);


    zmw_tx_buf_writeb(dev, buf, offset++, 0x03);
    zmw_tx_buf_writeb(dev, buf, offset++, 0xA4);
    zmw_tx_buf_writeb(dev, buf, offset++, 0x00);
    zmw_tx_buf_writeb(dev, buf, offset++, 0x00);

    zmw_tx_buf_writeb(dev, buf, offset++, 0x27);
    zmw_tx_buf_writeb(dev, buf, offset++, 0xA4);
    zmw_tx_buf_writeb(dev, buf, offset++, 0x00);
    zmw_tx_buf_writeb(dev, buf, offset++, 0x00);

    zmw_tx_buf_writeb(dev, buf, offset++, 0x42);
    zmw_tx_buf_writeb(dev, buf, offset++, 0x43);
    zmw_tx_buf_writeb(dev, buf, offset++, 0x5E);
    zmw_tx_buf_writeb(dev, buf, offset++, 0x00);

    zmw_tx_buf_writeb(dev, buf, offset++, 0x62);
    zmw_tx_buf_writeb(dev, buf, offset++, 0x32);
    zmw_tx_buf_writeb(dev, buf, offset++, 0x2F);
    zmw_tx_buf_writeb(dev, buf, offset++, 0x00);

    return offset;
}
