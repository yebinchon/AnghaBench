
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void
xor_buf(unsigned char *dst, const unsigned char *src, size_t len)
{
 while (len -- > 0) {
  *dst ++ ^= *src ++;
 }
}
