
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zdev_t ;
typedef int zbuf_t ;
typedef int u8_t ;
typedef int u32_t ;
typedef int u16_t ;


 int cpu_to_le16 (int) ;
 int zfLnxUsbOut (int *,int *,int,int *,int,int *,int,int *,int) ;

u32_t zfwUsbSend(zdev_t* dev, u8_t endpt, u8_t *hdr, u16_t hdrlen, u8_t *snap, u16_t snapLen,
                u8_t *tail, u16_t tailLen, zbuf_t *buf, u16_t offset)
{
    u32_t status;
    status = zfLnxUsbOut(dev, hdr, hdrlen, snap, snapLen, tail, tailLen, buf, offset);
    if ( status == 0 )
    {
        return 0;
    }
    else
    {
        return 1;
    }
}
