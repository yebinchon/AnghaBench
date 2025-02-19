
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zdev_t ;
typedef int zbuf_t ;
typedef size_t u8_t ;
typedef int u16_t ;


 size_t ZM_WLAN_EID_WIFI_IE ;
 int zfwBufGetSize (int *,int *) ;
 int* zgElementOffsetTable ;
 int zm_assert (int ) ;
 int zmw_rx_buf_readb (int *,int *,int) ;

u16_t zfFindATHExtCap(zdev_t* dev, zbuf_t* buf, u8_t type, u8_t subtype)
{
    u8_t subType;
    u16_t offset;
    u16_t bufLen;
    u16_t elen;
    u8_t id;
    u8_t tmp;


    subType = (zmw_rx_buf_readb(dev, buf, 0) >> 4);

    if ((offset = zgElementOffsetTable[subType]) == 0xff)
    {
        zm_assert(0);
    }


    offset += 24;

    bufLen = zfwBufGetSize(dev, buf);


    while ((offset+2)<bufLen)
    {

        if ((id = zmw_rx_buf_readb(dev, buf, offset)) == ZM_WLAN_EID_WIFI_IE)
        {

            if ((elen = zmw_rx_buf_readb(dev, buf, offset+1))>(bufLen - offset))
            {

                return 0xffff;
            }

            if ( elen == 0 )
            {
                return 0xffff;
            }

            if (((tmp = zmw_rx_buf_readb(dev, buf, offset+2)) == 0x00)
                    && ((tmp = zmw_rx_buf_readb(dev, buf, offset+3)) == 0x03)
                    && ((tmp = zmw_rx_buf_readb(dev, buf, offset+4)) == 0x7f)
                    && ((tmp = zmw_rx_buf_readb(dev, buf, offset+5)) == type))

            {
                if ( subtype != 0xff )
                {
                    if ( (tmp = zmw_rx_buf_readb(dev, buf, offset+6)) == subtype )
                    {
                        return offset;
                    }
                }
                else
                {
                    return offset;
                }
            }
        }


        if ((elen = zmw_rx_buf_readb(dev, buf, offset+1)) == 0)
        {
            return 0xffff;
        }
        offset += (elen+2);
    }
    return 0xffff;
}
