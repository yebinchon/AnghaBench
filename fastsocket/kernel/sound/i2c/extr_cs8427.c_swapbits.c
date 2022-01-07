
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned char swapbits(unsigned char val)
{
 int bit;
 unsigned char res = 0;
 for (bit = 0; bit < 8; bit++) {
  res <<= 1;
  res |= val & 1;
  val >>= 1;
 }
 return res;
}
