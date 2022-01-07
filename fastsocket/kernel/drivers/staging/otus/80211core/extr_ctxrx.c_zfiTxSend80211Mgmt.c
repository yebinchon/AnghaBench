
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zdev_t ;
typedef int zbuf_t ;
typedef int u16_t ;


 int ZM_EXTERNAL_ALLOC_BUF ;
 int ZM_SUCCESS ;
 int zfHpSend (int *,int*,int,int *,int ,int *,int ,int *,int ,int ,int ,int ) ;
 int zfwBufFree (int *,int *,int ) ;
 int zfwBufRemoveHead (int *,int *,int) ;
 int zmw_buf_readh (int *,int *,int) ;

u16_t zfiTxSend80211Mgmt(zdev_t* dev, zbuf_t* buf, u16_t port)
{
    u16_t err;


    u16_t hlen;
    u16_t header[(24+25+1)/2];
    int i;

    for(i=0;i<12;i++)
    {
        header[i] = zmw_buf_readh(dev, buf, i);
    }
    hlen = 24;

    zfwBufRemoveHead(dev, buf, 24);

    if ((err = zfHpSend(dev, header, hlen, ((void*)0), 0, ((void*)0), 0, buf, 0,
            ZM_EXTERNAL_ALLOC_BUF, 0, 0)) != ZM_SUCCESS)
    {
        goto zlError;
    }

    return 0;

zlError:

    zfwBufFree(dev, buf, 0);
    return 0;
}
