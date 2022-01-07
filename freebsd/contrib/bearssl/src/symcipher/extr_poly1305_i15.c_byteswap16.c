
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void
byteswap16(unsigned char *buf)
{
 int i;

 for (i = 0; i < 8; i ++) {
  unsigned x;

  x = buf[i];
  buf[i] = buf[15 - i];
  buf[15 - i] = x;
 }
}
