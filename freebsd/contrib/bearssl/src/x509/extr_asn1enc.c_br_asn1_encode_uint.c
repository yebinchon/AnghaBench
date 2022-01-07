
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int asn1len; int len; int data; } ;
typedef TYPE_1__ br_asn1_uint ;


 int br_asn1_encode_length (unsigned char*,int) ;
 int memcpy (unsigned char*,int ,int) ;

size_t
br_asn1_encode_uint(void *dest, br_asn1_uint pp)
{
 unsigned char *buf;
 size_t lenlen;

 if (dest == ((void*)0)) {
  return 1 + br_asn1_encode_length(((void*)0), pp.asn1len) + pp.asn1len;
 }
 buf = dest;
 *buf ++ = 0x02;
 lenlen = br_asn1_encode_length(buf, pp.asn1len);
 buf += lenlen;
 *buf = 0x00;
 memcpy(buf + pp.asn1len - pp.len, pp.data, pp.len);
 return 1 + lenlen + pp.asn1len;
}
