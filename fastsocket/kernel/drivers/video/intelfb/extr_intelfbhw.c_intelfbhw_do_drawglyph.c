
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct intelfb_info {int fb_start; } ;


 int ADVANCE_RING () ;
 int COLOR_DEPTH_16 ;
 int COLOR_DEPTH_32 ;
 int COLOR_DEPTH_8 ;
 int DBG_MSG (char*,int,int,int,int) ;
 int DW_LENGTH_MASK ;
 int HEIGHT_SHIFT ;
 int MAX_MONO_IMM_SIZE ;
 int MI_NOOP ;
 int OUT_RING (int) ;
 int PITCH_SHIFT ;
 int ROP_SHIFT ;
 int ROUND_UP_TO (int,int) ;
 int SRC_ROP_GXCOPY ;
 int START_RING (int) ;
 int WIDTH_SHIFT ;
 int WRITE_ALPHA ;
 int WRITE_RGB ;
 int XY_MONO_SRC_IMM_BLT_CMD ;

int intelfbhw_do_drawglyph(struct intelfb_info *dinfo, u32 fg, u32 bg, u32 w,
      u32 h, const u8* cdat, u32 x, u32 y, u32 pitch,
      u32 bpp)
{
 int nbytes, ndwords, pad, tmp;
 u32 br00, br09, br13, br18, br19, br22, br23;
 int dat, ix, iy, iw;
 int i, j;






 nbytes = ROUND_UP_TO(w, 16) / 8;


 nbytes = nbytes * h;





 if (nbytes > MAX_MONO_IMM_SIZE)
  return 0;


 ndwords = ROUND_UP_TO(nbytes, 4) / 4;





 pad = !(ndwords % 2);

 tmp = (XY_MONO_SRC_IMM_BLT_CMD & DW_LENGTH_MASK) + ndwords;
 br00 = (XY_MONO_SRC_IMM_BLT_CMD & ~DW_LENGTH_MASK) | tmp;
 br09 = dinfo->fb_start;
 br13 = (SRC_ROP_GXCOPY << ROP_SHIFT) | (pitch << PITCH_SHIFT);
 br18 = bg;
 br19 = fg;
 br22 = (x << WIDTH_SHIFT) | (y << HEIGHT_SHIFT);
 br23 = ((x + w) << WIDTH_SHIFT) | ((y + h) << HEIGHT_SHIFT);

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

 START_RING(8 + ndwords);
 OUT_RING(br00);
 OUT_RING(br13);
 OUT_RING(br22);
 OUT_RING(br23);
 OUT_RING(br09);
 OUT_RING(br18);
 OUT_RING(br19);
 ix = iy = 0;
 iw = ROUND_UP_TO(w, 8) / 8;
 while (ndwords--) {
  dat = 0;
  for (j = 0; j < 2; ++j) {
   for (i = 0; i < 2; ++i) {
    if (ix != iw || i == 0)
     dat |= cdat[iy*iw + ix++] << (i+j*2)*8;
   }
   if (ix == iw && iy != (h-1)) {
    ix = 0;
    ++iy;
   }
  }
  OUT_RING(dat);
 }
 if (pad)
  OUT_RING(MI_NOOP);
 ADVANCE_RING();

 return 1;
}
