
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeonfb_info {int fb_local_base; int pitch; } ;


 int DEFAULT_PITCH_OFFSET ;
 int DST_PITCH_OFFSET ;
 int INREG (int ) ;
 int MC_FB_LOCATION ;
 int OUTREG (int ,int) ;
 int SRC_PITCH_OFFSET ;
 int radeon_fifo_wait (int) ;

__attribute__((used)) static void radeon_fixup_offset(struct radeonfb_info *rinfo)
{
 u32 local_base;
 radeon_fifo_wait (1);
 local_base = INREG(MC_FB_LOCATION) << 16;
 if (local_base == rinfo->fb_local_base)
  return;

 rinfo->fb_local_base = local_base;

 radeon_fifo_wait (3);
 OUTREG(DEFAULT_PITCH_OFFSET, (rinfo->pitch << 0x16) |
         (rinfo->fb_local_base >> 10));
 OUTREG(DST_PITCH_OFFSET, (rinfo->pitch << 0x16) | (rinfo->fb_local_base >> 10));
 OUTREG(SRC_PITCH_OFFSET, (rinfo->pitch << 0x16) | (rinfo->fb_local_base >> 10));
}
