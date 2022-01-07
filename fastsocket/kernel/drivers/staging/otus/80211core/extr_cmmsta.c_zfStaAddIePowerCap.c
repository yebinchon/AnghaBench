
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zdev_t ;
typedef int zbuf_t ;
typedef scalar_t__ u8_t ;
typedef int u16_t ;


 int ZM_WLAN_EID_POWER_CAPABILITY ;
 int zfHpGetMaxTxPower (int *) ;
 int zfHpGetMinTxPower (int *) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_tx_buf_writeb (int *,int *,int ,int) ;
 int zmw_tx_buf_writeh (int *,int *,int ,scalar_t__) ;

u16_t zfStaAddIePowerCap(zdev_t* dev, zbuf_t* buf, u16_t offset)
{
    u8_t MaxTxPower;
    u8_t MinTxPower;

    zmw_get_wlan_dev(dev);


    zmw_tx_buf_writeb(dev, buf, offset++, ZM_WLAN_EID_POWER_CAPABILITY);


    zmw_tx_buf_writeb(dev, buf, offset++, 2);

    MinTxPower = (u8_t)(zfHpGetMinTxPower(dev)/2);
    MaxTxPower = (u8_t)(zfHpGetMaxTxPower(dev)/2);


    zmw_tx_buf_writeh(dev, buf, offset++, MinTxPower);


    zmw_tx_buf_writeh(dev, buf, offset++, MaxTxPower);

    return offset;
}
