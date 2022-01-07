
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
unsigned
crc32_string (unsigned chksum, const char *string)
{
  do
    {
      unsigned value = *string << 24;
      unsigned ix;

      for (ix = 8; ix--; value <<= 1)
   {
     unsigned feedback;

     feedback = (value ^ chksum) & 0x80000000 ? 0x04c11db7 : 0;
    chksum <<= 1;
    chksum ^= feedback;
   }
    }
  while (*string++);
  return chksum;
}
