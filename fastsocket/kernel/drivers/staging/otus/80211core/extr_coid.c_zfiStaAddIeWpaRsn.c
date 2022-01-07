
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zdev_t ;
typedef int zbuf_t ;
typedef int u8_t ;
typedef int u16_t ;


 int zfStaAddIeWpaRsn (int *,int *,int ,int ) ;

u16_t zfiStaAddIeWpaRsn(zdev_t* dev, zbuf_t* buf, u16_t offset, u8_t frameType)
{
    return zfStaAddIeWpaRsn(dev, buf, offset, frameType);
}
