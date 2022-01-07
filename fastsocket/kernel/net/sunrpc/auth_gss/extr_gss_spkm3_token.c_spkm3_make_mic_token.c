
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct xdr_netobj {int len; int data; } ;


 int memcpy (unsigned char*,int ,int) ;

void
spkm3_make_mic_token(unsigned char **tokp, int toklen, struct xdr_netobj *mic_hdr, struct xdr_netobj *md5cksum, int md5elen, int md5zbit)
{
 unsigned char *ict = *tokp;

 *(u8 *)ict++ = 0xa4;
 *(u8 *)ict++ = toklen;
 memcpy(ict, mic_hdr->data, mic_hdr->len);
 ict += mic_hdr->len;

 *(u8 *)ict++ = 0x03;
 *(u8 *)ict++ = md5elen + 1;
 *(u8 *)ict++ = md5zbit;
 memcpy(ict, md5cksum->data, md5elen);
}
