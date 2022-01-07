
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zdev_t ;
typedef int u16_t ;


 int ZM_LV_0 ;
 int ZM_MAC_REG_ATIM_WINDOW ;
 int zfDelayWriteInternalReg (int *,int ,int ) ;
 int zfFlushDelayWrite (int *) ;
 int zm_msg1_mm (int ,char*,int ) ;

void zfHpSetAtimWindow(zdev_t* dev, u16_t atimWin)
{
    zm_msg1_mm(ZM_LV_0, "Set ATIM window to ", atimWin);
    zfDelayWriteInternalReg(dev, ZM_MAC_REG_ATIM_WINDOW, atimWin);
    zfFlushDelayWrite(dev);
}
