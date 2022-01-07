
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static void usbat_pack_ata_sector_cmd(unsigned char *buf,
     unsigned char thistime,
     u32 sector, unsigned char cmd)
{
 buf[0] = 0;
 buf[1] = thistime;
 buf[2] = sector & 0xFF;
 buf[3] = (sector >> 8) & 0xFF;
 buf[4] = (sector >> 16) & 0xFF;
 buf[5] = 0xE0 | ((sector >> 24) & 0x0F);
 buf[6] = cmd;
}
