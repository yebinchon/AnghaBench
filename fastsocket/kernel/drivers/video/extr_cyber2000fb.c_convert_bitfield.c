
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int u32 ;
struct fb_bitfield {int length; int offset; } ;



__attribute__((used)) static inline u32 convert_bitfield(u_int val, struct fb_bitfield *bf)
{
 u_int mask = (1 << bf->length) - 1;

 return (val >> (16 - bf->length) & mask) << bf->offset;
}
