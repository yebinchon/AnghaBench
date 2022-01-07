
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int br_enc16le (unsigned char*,int ) ;

void
br_range_enc16le(void *dst, const uint16_t *v, size_t num)
{
 unsigned char *buf;

 buf = dst;
 while (num -- > 0) {
  br_enc16le(buf, *v ++);
  buf += 2;
 }
}
