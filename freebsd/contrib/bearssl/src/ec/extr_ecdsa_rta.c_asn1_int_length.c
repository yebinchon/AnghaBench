
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static size_t
asn1_int_length(const unsigned char *x, size_t xlen)
{
 while (xlen > 0 && *x == 0) {
  x ++;
  xlen --;
 }
 if (xlen == 0 || *x >= 0x80) {
  xlen ++;
 }
 return xlen;
}
