
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zdev_t ;
typedef int zbuf_t ;
typedef int u8_t ;
typedef int u16_t ;


 int ZM_WLAN_EID_VENDOR_PRIVATE ;
 scalar_t__ zfRxBufferEqualToStr (int *,int *,int*,int,int) ;
 int zfwBufGetSize (int *,int *) ;
 int* zgElementOffsetTable ;
 int zm_assert (int ) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_rx_buf_readb (int *,int *,int) ;

u16_t zfFindXRElement(zdev_t* dev, zbuf_t* buf, u8_t type)
{
    u8_t subType;
    u16_t offset;
    u16_t bufLen;
    u16_t elen;
    u8_t id;
    u8_t ouixr[6] = {0x00,0x03,0x7f,0x03, 0x01, 0x00};

    zmw_get_wlan_dev(dev);


    subType = (zmw_rx_buf_readb(dev, buf, 0) >> 4);
    if ((offset = zgElementOffsetTable[subType]) == 0xff)
    {
        zm_assert(0);
    }


    offset += 24;

    bufLen = zfwBufGetSize(dev, buf);

    while ((offset+2)<bufLen)
    {

        if ((id = zmw_rx_buf_readb(dev, buf, offset)) == ZM_WLAN_EID_VENDOR_PRIVATE)
        {

            if ((elen = zmw_rx_buf_readb(dev, buf, offset+1))>(bufLen - offset))
            {

                return 0xffff;
            }

            if ( elen == 0 )
            {
                return 0xffff;
            }

            if (zfRxBufferEqualToStr(dev, buf, ouixr, offset+2, 6) && ( zmw_rx_buf_readb(dev, buf, offset+1) >= 6))
            {
                return offset;
            }
        }


        elen = zmw_rx_buf_readb(dev, buf, offset+1);







        offset += (elen+2);
    }
    return 0xffff;
}
