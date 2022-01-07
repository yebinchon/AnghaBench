
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void bitwise_xor(unsigned char *ina, unsigned char *inb, unsigned char *out)
{
 int i;
 for (i=0; i<16; i++)
 {
  out[i] = ina[i] ^ inb[i];
 }
}
