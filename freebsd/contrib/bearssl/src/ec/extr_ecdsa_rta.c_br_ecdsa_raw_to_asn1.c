
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t asn1_int_length (unsigned char*,size_t) ;
 int memcpy (void*,unsigned char*,size_t) ;

size_t
br_ecdsa_raw_to_asn1(void *sig, size_t sig_len)
{






 unsigned char *buf;
 size_t hlen, rlen, slen, zlen, off;
 unsigned char tmp[257];

 buf = sig;
 if ((sig_len & 1) != 0) {
  return 0;
 }




 hlen = sig_len >> 1;
 rlen = asn1_int_length(buf, hlen);
 slen = asn1_int_length(buf + hlen, hlen);
 if (rlen > 125 || slen > 125) {
  return 0;
 }




 tmp[0] = 0x30;
 zlen = rlen + slen + 4;
 if (zlen >= 0x80) {
  tmp[1] = 0x81;
  tmp[2] = zlen;
  off = 3;
 } else {
  tmp[1] = zlen;
  off = 2;
 }




 tmp[off ++] = 0x02;
 tmp[off ++] = rlen;
 if (rlen > hlen) {
  tmp[off] = 0x00;
  memcpy(tmp + off + 1, buf, hlen);
 } else {
  memcpy(tmp + off, buf + hlen - rlen, rlen);
 }
 off += rlen;




 tmp[off ++] = 0x02;
 tmp[off ++] = slen;
 if (slen > hlen) {
  tmp[off] = 0x00;
  memcpy(tmp + off + 1, buf + hlen, hlen);
 } else {
  memcpy(tmp + off, buf + sig_len - slen, slen);
 }
 off += slen;




 memcpy(sig, tmp, off);
 return off;
}
