
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int u_char ;
typedef int asn_len_t ;


 int ASN_MAXLEN ;
 int asn_error (int *,char*,int) ;

__attribute__((used)) static u_int
asn_put_len(u_char *ptr, asn_len_t len)
{
 u_int lenlen, lenlen1;
 asn_len_t tmp;

 if (len > ASN_MAXLEN) {
  asn_error(((void*)0), "encoding length too long: (%u)", len);
  return (0);
 }

 if (len <= 127) {
  if (ptr)
   *ptr++ = (u_char)len;
  return (1);
 } else {
  lenlen = 0;

  for (tmp = len; tmp != 0; tmp >>= 8)
   lenlen++;
  if (ptr != ((void*)0)) {
   *ptr++ = (u_char)lenlen | 0x80;
   lenlen1 = lenlen;
   while (lenlen1-- > 0) {
    ptr[lenlen1] = len & 0xff;
    len >>= 8;
   }
  }
  return (lenlen + 1);
 }
}
