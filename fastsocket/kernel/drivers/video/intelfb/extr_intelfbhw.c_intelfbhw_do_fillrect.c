
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intelfb_info {int fb_start; int ring_space; int ring_tail; int ring_head; } ;


 int ADVANCE_RING () ;
 int COLOR_BLT_CMD ;
 int COLOR_DEPTH_16 ;
 int COLOR_DEPTH_32 ;
 int COLOR_DEPTH_8 ;
 int DBG_MSG (char*,int,int,int,...) ;
 int HEIGHT_SHIFT ;
 int MI_NOOP ;
 int OUT_RING (int) ;
 int ROP_SHIFT ;
 int START_RING (int) ;
 int WIDTH_SHIFT ;
 int WRITE_ALPHA ;
 int WRITE_RGB ;

void intelfbhw_do_fillrect(struct intelfb_info *dinfo, u32 x, u32 y, u32 w,
      u32 h, u32 color, u32 pitch, u32 bpp, u32 rop)
{
 u32 br00, br09, br13, br14, br16;






 br00 = COLOR_BLT_CMD;
 br09 = dinfo->fb_start + (y * pitch + x * (bpp / 8));
 br13 = (rop << ROP_SHIFT) | pitch;
 br14 = (h << HEIGHT_SHIFT) | ((w * (bpp / 8)) << WIDTH_SHIFT);
 br16 = color;

 switch (bpp) {
 case 8:
  br13 |= COLOR_DEPTH_8;
  break;
 case 16:
  br13 |= COLOR_DEPTH_16;
  break;
 case 32:
  br13 |= COLOR_DEPTH_32;
  br00 |= WRITE_ALPHA | WRITE_RGB;
  break;
 }

 START_RING(6);
 OUT_RING(br00);
 OUT_RING(br13);
 OUT_RING(br14);
 OUT_RING(br09);
 OUT_RING(br16);
 OUT_RING(MI_NOOP);
 ADVANCE_RING();





}
