
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void
byteswap(unsigned char *G)
{
 int i;

 for (i = 0; i < 16; i ++) {
  unsigned char t;

  t = G[i];
  G[i] = G[31 - i];
  G[31 - i] = t;
 }
}
