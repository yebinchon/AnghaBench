
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int calc_pitch_target(int pitch)
{
 int ptarget = 1 << (pitch >> 12);
 if (pitch & 0x800) ptarget += (ptarget * 0x102e) / 0x2710;
 if (pitch & 0x400) ptarget += (ptarget * 0x764) / 0x2710;
 if (pitch & 0x200) ptarget += (ptarget * 0x389) / 0x2710;
 ptarget += (ptarget >> 1);
 if (ptarget > 0xffff) ptarget = 0xffff;
 return ptarget;
}
