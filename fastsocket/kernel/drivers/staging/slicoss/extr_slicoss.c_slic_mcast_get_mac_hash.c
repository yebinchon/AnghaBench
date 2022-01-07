
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int slic_crc_init ;
 int* slic_crc_table ;
 int slic_mcast_init_crc32 () ;

__attribute__((used)) static unsigned char slic_mcast_get_mac_hash(char *macaddr)
{
 u32 crc;
 char *p;
 int i;
 unsigned char machash = 0;

 if (!slic_crc_init) {
  slic_mcast_init_crc32();
  slic_crc_init = 1;
 }

 crc = 0xFFFFFFFF;
 for (i = 0, p = macaddr; i < 6; ++p, ++i)
  crc = (crc >> 8) ^ slic_crc_table[(crc ^ *p) & 0xFF];


 for (i = 1; i < 9; i++)
  machash |= (((crc >> i) & 1) << (8 - i));

 return machash;
}
