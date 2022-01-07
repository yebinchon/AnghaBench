
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zdev_t ;
typedef int zbuf_t ;
typedef int u16_t ;


 int zfShowTxEAPOL (int *,int *,int) ;
 int zfwBufGetSize (int *,int *) ;
 int zmw_tx_buf_readb (int *,int *,int) ;

u16_t zfTxGenWlanSnap(zdev_t* dev, zbuf_t* buf, u16_t* snap, u16_t* snaplen)
{
    u16_t removed;
    u16_t etherType;
    u16_t len;

    len = zfwBufGetSize(dev, buf);
    if (len < 14)
    {

        *snaplen = 0;
        return 0;
    }


    etherType = (((u16_t)zmw_tx_buf_readb(dev, buf, 12))<<8)
                + zmw_tx_buf_readb(dev, buf, 13);



    if (etherType > 1500)
    {

        removed = 12;
        snap[0] = 0xaaaa;
        snap[1] = 0x0003;
        if ((etherType ==0x8137) || (etherType == 0x80f3))
        {

            snap[2] = 0xF800;
        }
        else
        {

            snap[2] = 0x0000;
        }
        *snaplen = 6;

        if ( etherType == 0x888E )
        {
            zfShowTxEAPOL(dev, buf, 14);
        }
    }
    else
    {

        removed = 14;
        *snaplen = 0;
    }

    return removed;
}
