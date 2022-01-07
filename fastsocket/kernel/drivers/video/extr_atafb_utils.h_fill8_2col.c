
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int expand8_2col2mask (int,int,int*,int*) ;

__attribute__((used)) static inline void fill8_2col(u8 *dst, u8 fg, u8 bg, u32 mask)
{
 u32 fgm[2], bgm[2], tmp;

 expand8_2col2mask(fg, bg, fgm, bgm);

 mask |= mask << 8;



 tmp = (mask & fgm[0]) ^ bgm[0];
 dst[0] = tmp;
 dst[2] = (tmp >>= 8);
}
