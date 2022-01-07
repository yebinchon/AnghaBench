
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void
xorbuf(void *dst, const void *src, size_t len)
{
 unsigned char *d;
 const unsigned char *s;

 d = dst;
 s = src;
 while (len -- > 0) {
  *d ++ ^= *s ++;
 }
}
