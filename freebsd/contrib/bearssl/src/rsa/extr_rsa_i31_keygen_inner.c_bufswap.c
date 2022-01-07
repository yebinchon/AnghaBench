
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void
bufswap(void *b1, void *b2, size_t len)
{
 size_t u;
 unsigned char *buf1, *buf2;

 buf1 = b1;
 buf2 = b2;
 for (u = 0; u < len; u ++) {
  unsigned w;

  w = buf1[u];
  buf1[u] = buf2[u];
  buf2[u] = w;
 }
}
