
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zdev_t ;
typedef int zbuf_t ;
typedef scalar_t__ u16_t ;


 int ZM_PERFORMANCE_RX_AMSDU (int *,int *,scalar_t__) ;
 int zfRxBufferCopy (int *,int *,int *,int,scalar_t__,int) ;
 int * zfwBufAllocate (int *,int) ;
 scalar_t__ zfwBufGetSize (int *,int *) ;
 int zfwBufSetSize (int *,int *,int) ;
 int zmw_buf_readb (int *,int *,scalar_t__) ;

zbuf_t *zfGetAmsduSubFrame(zdev_t *dev, zbuf_t *buf, u16_t *offset)
{
 u16_t subframeLen;
 u16_t amsduLen = zfwBufGetSize(dev, buf);
 zbuf_t *newBuf;

 ZM_PERFORMANCE_RX_AMSDU(dev, buf, amsduLen);


 if (amsduLen < (*offset + 14))
  return ((void*)0);


 subframeLen = (zmw_buf_readb(dev, buf, *offset + 12) << 8) +
  zmw_buf_readb(dev, buf, *offset + 13);

 if (subframeLen == 0)
  return ((void*)0);


 if ((*offset+14+subframeLen) <= amsduLen) {

  newBuf = zfwBufAllocate(dev, 24+2+subframeLen);
  if (newBuf != ((void*)0)) {
   zfRxBufferCopy(dev, newBuf, buf, 0, *offset,
     14+subframeLen);
   zfwBufSetSize(dev, newBuf, 14+subframeLen);


   *offset += (((14+subframeLen)+3) & 0xfffc);


   return newBuf;
  }
 }
 return ((void*)0);
}
