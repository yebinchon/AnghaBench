
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long u32 ;


 int ARRAY_SIZE (int*) ;
 long* slic_crc_table ;

__attribute__((used)) static void slic_mcast_init_crc32(void)
{
 u32 c;
 u32 e = 0;
 int i;
 int k;

 static int p[] = { 0, 1, 2, 4, 5, 7, 8, 10, 11, 12, 16, 22, 23, 26 };

 for (i = 0; i < ARRAY_SIZE(p); i++)
  e |= 1L << (31 - p[i]);

 for (i = 1; i < 256; i++) {
  c = i;
  for (k = 8; k; k--)
   c = c & 1 ? (c >> 1) ^ e : c >> 1;
  slic_crc_table[i] = c;
 }
}
