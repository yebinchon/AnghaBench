
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zdev_t ;
typedef int zbuf_t ;
typedef int u8_t ;
typedef int u16_t ;


 int ZM_WLAN_EID_WIFI_IE ;
 int zmw_tx_buf_writeb (int *,int *,int ,int) ;

u16_t zfStaAddIeWmeInfo(zdev_t* dev, zbuf_t* buf, u16_t offset, u8_t qosInfo)
{

    zmw_tx_buf_writeb(dev, buf, offset++, ZM_WLAN_EID_WIFI_IE);


    zmw_tx_buf_writeb(dev, buf, offset++, 7);


    zmw_tx_buf_writeb(dev, buf, offset++, 0x00);
    zmw_tx_buf_writeb(dev, buf, offset++, 0x50);
    zmw_tx_buf_writeb(dev, buf, offset++, 0xF2);
    zmw_tx_buf_writeb(dev, buf, offset++, 0x02);
    zmw_tx_buf_writeb(dev, buf, offset++, 0x00);
    zmw_tx_buf_writeb(dev, buf, offset++, 0x01);


    zmw_tx_buf_writeb(dev, buf, offset++, qosInfo);

    return offset;
}
