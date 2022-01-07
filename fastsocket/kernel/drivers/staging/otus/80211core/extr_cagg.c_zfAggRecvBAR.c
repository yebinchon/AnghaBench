
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zdev_t ;
typedef int zbuf_t ;
typedef int u8_t ;
typedef int u16_t ;


 int DbgPrint (char*,int) ;
 int zfSendBA (int *,int,int*) ;
 int zfwBufGetSize (int *,int *) ;
 int zmw_rx_buf_readh (int *,int *,int) ;

void zfAggRecvBAR(zdev_t* dev, zbuf_t *buf) {
    u16_t start_seq, len;
    u8_t i, bitmap[8];
    len = zfwBufGetSize(dev, buf);
    start_seq = zmw_rx_buf_readh(dev, buf, len-2);
    DbgPrint("Received a BAR Control frame, start_seq=%d", start_seq>>4);

    for (i=0; i<8; i++) bitmap[i]=0;
    zfSendBA(dev, start_seq, bitmap);
}
