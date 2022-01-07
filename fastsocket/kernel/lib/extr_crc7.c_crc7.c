
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int crc7_byte (int ,int ) ;

u8 crc7(u8 crc, const u8 *buffer, size_t len)
{
 while (len--)
  crc = crc7_byte(crc, *buffer++);
 return crc;
}
