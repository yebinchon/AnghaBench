
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;


 size_t* crctable ;

__attribute__((used)) static uint32_t
calc_crc32(const char *p, size_t len, uint32_t crc)
{
 uint32_t i;

 for (i = 0; i < len; i++) {
  crc = crctable[(crc ^ *p++) & 0xFFL] ^ (crc >> 8);
 }

 return (crc ^ 0xFFFFFFFF);
}
