
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int CRCPOLY_LE ;

__attribute__((used)) static uint32_t crc32_le(uint32_t crc, unsigned char const *p, size_t len)
{
 int i;
 while (len--) {
  crc ^= *p++;
  for (i = 0; i < 8; i++)
   crc = (crc >> 1) ^ ((crc & 1) ? CRCPOLY_LE : 0);
 }
 return crc;
}
