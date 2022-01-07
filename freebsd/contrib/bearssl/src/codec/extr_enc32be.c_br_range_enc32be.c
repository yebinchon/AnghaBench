
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int br_enc32be (unsigned char*,int ) ;

void
br_range_enc32be(void *dst, const uint32_t *v, size_t num)
{
 unsigned char *buf;

 buf = dst;
 while (num -- > 0) {
  br_enc32be(buf, *v ++);
  buf += 4;
 }
}
