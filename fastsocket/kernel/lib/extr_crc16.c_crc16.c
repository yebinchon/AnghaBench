
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;


 int crc16_byte (int ,int ) ;

u16 crc16(u16 crc, u8 const *buffer, size_t len)
{
 while (len--)
  crc = crc16_byte(crc, *buffer++);
 return crc;
}
