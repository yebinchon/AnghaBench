
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int bswap_32 (int ) ;

void mem_bswap_32(void *src, int byte_size)
{
 u32 *m = src;
 while (byte_size > 0) {
  *m = bswap_32(*m);
  byte_size -= sizeof(u32);
  ++m;
 }
}
