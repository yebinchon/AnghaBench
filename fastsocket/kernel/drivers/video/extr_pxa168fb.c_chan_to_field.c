
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_bitfield {int length; unsigned int offset; } ;



__attribute__((used)) static unsigned int chan_to_field(unsigned int chan, struct fb_bitfield *bf)
{
 return ((chan & 0xffff) >> (16 - bf->length)) << bf->offset;
}
