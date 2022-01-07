
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zdev_t ;
typedef int zbuf_t ;
typedef int u8_t ;
typedef int u16_t ;


 int ZM_WLAN_EID_EXTENDED_HT_CAPABILITY ;
 int ZM_WLAN_EID_HT_CAPABILITY ;
 int ZM_WLAN_EID_SSID ;
 int ZM_WLAN_EID_WPA_IE ;
 scalar_t__ zfRxBufferEqualToStr (int *,int *,int*,int,int) ;
 int zfwBufGetSize (int *,int *) ;
 int* zgElementOffsetTable ;
 int zm_assert (int ) ;
 int zmw_rx_buf_readb (int *,int *,int) ;

u16_t zfFindElement(zdev_t* dev, zbuf_t* buf, u8_t eid)
{
    u8_t subType;
    u16_t offset;
    u16_t bufLen;
    u16_t elen;
    u8_t id, HTEid=0;
    u8_t oui[4] = {0x00, 0x50, 0xf2, 0x01};
    u8_t oui11n[3] = {0x00,0x90,0x4C};
    u8_t HTType = 0;


    subType = (zmw_rx_buf_readb(dev, buf, 0) >> 4);
    if ((offset = zgElementOffsetTable[subType]) == 0xff)
    {
        zm_assert(0);
    }


    offset += 24;



    if ((eid == ZM_WLAN_EID_HT_CAPABILITY) ||
        (eid == ZM_WLAN_EID_EXTENDED_HT_CAPABILITY))
    {
        HTEid = eid;
        eid = ZM_WLAN_EID_WPA_IE;
        HTType = 1;
    }


    bufLen = zfwBufGetSize(dev, buf);

    while ((offset+2)<bufLen)
    {

        if ((id = zmw_rx_buf_readb(dev, buf, offset)) == eid)
        {

            if ((elen = zmw_rx_buf_readb(dev, buf, offset+1))>(bufLen - offset))
            {

                return 0xffff;
            }

            if ( elen == 0 && eid != ZM_WLAN_EID_SSID)
            {

                return 0xffff;
            }

            if ( eid == ZM_WLAN_EID_WPA_IE )
            {

                if ( (HTType == 0) && zfRxBufferEqualToStr(dev, buf, oui, offset+2, 4) )
                {
                    return offset;
                }




                if ((HTType == 1) && ( zfRxBufferEqualToStr(dev, buf, oui11n, offset+2, 3) ))
                {
                    if ( zmw_rx_buf_readb(dev, buf, offset+5) == HTEid )
                    {
                        return offset + 5;
                    }
                }

            }
            else
            {
                return offset;
            }
        }


        elen = zmw_rx_buf_readb(dev, buf, offset+1);







        offset += (elen+2);
    }
    return 0xffff;
}
