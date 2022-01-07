
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;



__attribute__((used)) static inline u16 combine_8_to_16(u8 lower, u8 upper)
{
 u16 _lower = lower;
 u16 _upper = upper;
 return _lower | (_upper << 8);
}
