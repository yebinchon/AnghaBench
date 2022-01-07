
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int s16 ;



__attribute__((used)) static inline s16 U8_TO_S16(u8 ch)
{
 return (s16) (ch - 0x80) << 8;
}
