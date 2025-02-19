
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 unsigned int BE_TABLE_SIZE ;
 int CRCPOLY_BE ;
 int* crc32table_be ;

__attribute__((used)) static void crc32init_be(void)
{
 unsigned i, j;
 uint32_t crc = 0x80000000;

 crc32table_be[0] = 0;

 for (i = 1; i < BE_TABLE_SIZE; i <<= 1) {
  crc = (crc << 1) ^ ((crc & 0x80000000) ? CRCPOLY_BE : 0);
  for (j = 0; j < i; j++)
   crc32table_be[i + j] = crc ^ crc32table_be[j];
 }
}
