
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int br_dec32be (unsigned char const*) ;

void
br_range_dec32be(uint32_t *v, size_t num, const void *src)
{
 const unsigned char *buf;

 buf = src;
 while (num -- > 0) {
  *v ++ = br_dec32be(buf);
  buf += 4;
 }
}
