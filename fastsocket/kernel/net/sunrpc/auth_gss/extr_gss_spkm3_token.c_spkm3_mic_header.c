
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int memcpy (char*,unsigned char*,int) ;

void
spkm3_mic_header(unsigned char **hdrbuf, unsigned int *hdrlen, unsigned char *ctxdata, int elen, int zbit)
{
 char *hptr = *hdrbuf;
 char *top = *hdrbuf;

 *(u8 *)hptr++ = 0x30;
 *(u8 *)hptr++ = elen + 7;


 *(u8 *)hptr++ = 0x02;
 *(u8 *)hptr++ = 0x02;
 *(u8 *)hptr++ = 0x01;
 *(u8 *)hptr++ = 0x01;


 *(u8 *)hptr++ = 0x03;
 *(u8 *)hptr++ = elen + 1;
 *(u8 *)hptr++ = zbit;
 memcpy(hptr, ctxdata, elen);
 hptr += elen;
 *hdrlen = hptr - top;
}
