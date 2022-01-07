
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int * four2long ;

__attribute__((used)) static inline void expand8_col2mask(u8 c, u32 m[])
{
 m[0] = four2long[c & 15];



}
