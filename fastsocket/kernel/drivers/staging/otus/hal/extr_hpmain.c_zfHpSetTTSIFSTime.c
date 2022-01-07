
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zdev_t ;
typedef int u8_t ;
typedef int u32_t ;


 int ZM_MAC_REG_EIFS_AND_SIFS ;
 int zfDelayWriteInternalReg (int *,int ,int) ;
 int zfFlushDelayWrite (int *) ;
 int zmw_get_wlan_dev (int *) ;

void zfHpSetTTSIFSTime(zdev_t* dev, u8_t sifs_time)
{
    u32_t reg_value = 0;
    zmw_get_wlan_dev(dev);

    sifs_time &= 0x3f;
    reg_value = 0x14400b | (((u32_t)sifs_time)<<24);

    zfDelayWriteInternalReg(dev, ZM_MAC_REG_EIFS_AND_SIFS, reg_value);
    zfFlushDelayWrite(dev);
}
