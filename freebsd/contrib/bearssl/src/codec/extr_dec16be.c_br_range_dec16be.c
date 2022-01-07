
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int br_dec16be (unsigned char const*) ;

void
br_range_dec16be(uint16_t *v, size_t num, const void *src)
{
 const unsigned char *buf;

 buf = src;
 while (num -- > 0) {
  *v ++ = br_dec16be(buf);
  buf += 2;
 }
}
