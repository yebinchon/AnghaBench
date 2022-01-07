
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct azf3328_mixer_reg {unsigned long reg; unsigned long lchan_shift; unsigned long rchan_shift; unsigned long mask; unsigned long invert; unsigned long stereo; unsigned long enum_c; } ;



__attribute__((used)) static void snd_azf3328_mixer_reg_decode(struct azf3328_mixer_reg *r, unsigned long val)
{
 r->reg = val & 0xff;
 r->lchan_shift = (val >> 8) & 0x0f;
 r->rchan_shift = (val >> 12) & 0x0f;
 r->mask = (val >> 16) & 0xff;
 r->invert = (val >> 24) & 1;
 r->stereo = (val >> 25) & 1;
 r->enum_c = (val >> 26) & 0x0f;
}
