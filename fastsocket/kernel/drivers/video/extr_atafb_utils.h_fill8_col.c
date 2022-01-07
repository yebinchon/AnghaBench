
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;



__attribute__((used)) static inline void fill8_col(u8 *dst, u32 m[])
{
 u32 tmp = m[0];
 dst[0] = tmp;
 dst[2] = (tmp >>= 8);
}
