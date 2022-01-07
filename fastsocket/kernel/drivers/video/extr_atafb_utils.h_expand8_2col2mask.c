
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int* four2long ;

__attribute__((used)) static inline void expand8_2col2mask(u8 fg, u8 bg, u32 fgm[], u32 bgm[])
{
 fgm[0] = four2long[fg & 15] ^ (bgm[0] = four2long[bg & 15]);



}
