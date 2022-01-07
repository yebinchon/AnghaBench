
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void
revbytes(unsigned char *buf, size_t len)
{
 size_t u;

 for (u = 0; u < (len >> 1); u ++) {
  unsigned t;

  t = buf[u];
  buf[u] = buf[len - 1 - u];
  buf[len - 1 - u] = t;
 }
}
