
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int s16 ;



__attribute__((used)) static inline u8 S16_TO_U8(s16 ch)
{
 return (u8) (ch >> 8) + 0x80;
}
