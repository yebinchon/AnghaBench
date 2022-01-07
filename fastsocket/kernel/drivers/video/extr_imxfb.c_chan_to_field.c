
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct fb_bitfield {int length; int offset; } ;



__attribute__((used)) static inline u_int chan_to_field(u_int chan, struct fb_bitfield *bf)
{
 chan &= 0xffff;
 chan >>= 16 - bf->length;
 return chan << bf->offset;
}
