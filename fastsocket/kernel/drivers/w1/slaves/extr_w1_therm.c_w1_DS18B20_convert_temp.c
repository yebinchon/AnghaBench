
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int s16 ;



__attribute__((used)) static inline int w1_DS18B20_convert_temp(u8 rom[9])
{
 int t = ((s16)rom[1] << 8) | rom[0];
 t = t*1000/16;
 return t;
}
