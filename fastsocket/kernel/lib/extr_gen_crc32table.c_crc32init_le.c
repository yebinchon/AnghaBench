
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int CRCPOLY_LE ;
 int CRC_LE_BITS ;
 unsigned int LE_TABLE_SIZE ;
 int* crc32table_le ;

__attribute__((used)) static void crc32init_le(void)
{
 unsigned i, j;
 uint32_t crc = 1;

 crc32table_le[0] = 0;

 for (i = 1 << (CRC_LE_BITS - 1); i; i >>= 1) {
  crc = (crc >> 1) ^ ((crc & 1) ? CRCPOLY_LE : 0);
  for (j = 0; j < LE_TABLE_SIZE; j += 2 * i)
   crc32table_le[i + j] = crc ^ crc32table_le[j];
 }
}
