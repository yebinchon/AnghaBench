
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeonfb_info {int dp_gui_master_cntl; } ;
struct fb_copyarea {int width; int height; int dx; int dy; int sx; int sy; } ;


 int DP_CNTL ;
 int DP_GUI_MASTER_CNTL ;
 int DP_SRC_SOURCE_MEMORY ;
 int DP_WRITE_MSK ;
 int DSTCACHE_CTLSTAT ;
 int DST_HEIGHT_WIDTH ;
 int DST_X_LEFT_TO_RIGHT ;
 int DST_Y_TOP_TO_BOTTOM ;
 int DST_Y_X ;
 int GMC_BRUSH_NONE ;
 int GMC_SRC_DSTCOLOR ;
 int OUTREG (int ,int) ;
 int RB2D_DC_FLUSH_ALL ;
 int ROP3_S ;
 int SRC_Y_X ;
 int WAIT_2D_IDLECLEAN ;
 int WAIT_DMA_GUI_IDLE ;
 int WAIT_UNTIL ;
 int radeon_fifo_wait (int) ;

__attribute__((used)) static void radeonfb_prim_copyarea(struct radeonfb_info *rinfo,
       const struct fb_copyarea *area)
{
 int xdir, ydir;
 u32 sx, sy, dx, dy, w, h;

 w = area->width; h = area->height;
 dx = area->dx; dy = area->dy;
 sx = area->sx; sy = area->sy;
 xdir = sx - dx;
 ydir = sy - dy;

 if ( xdir < 0 ) { sx += w-1; dx += w-1; }
 if ( ydir < 0 ) { sy += h-1; dy += h-1; }

 radeon_fifo_wait(3);
 OUTREG(DP_GUI_MASTER_CNTL,
  rinfo->dp_gui_master_cntl
  | GMC_BRUSH_NONE
  | GMC_SRC_DSTCOLOR
  | ROP3_S
  | DP_SRC_SOURCE_MEMORY );
 OUTREG(DP_WRITE_MSK, 0xffffffff);
 OUTREG(DP_CNTL, (xdir>=0 ? DST_X_LEFT_TO_RIGHT : 0)
   | (ydir>=0 ? DST_Y_TOP_TO_BOTTOM : 0));

 radeon_fifo_wait(2);
 OUTREG(DSTCACHE_CTLSTAT, RB2D_DC_FLUSH_ALL);
 OUTREG(WAIT_UNTIL, (WAIT_2D_IDLECLEAN | WAIT_DMA_GUI_IDLE));

 radeon_fifo_wait(3);
 OUTREG(SRC_Y_X, (sy << 16) | sx);
 OUTREG(DST_Y_X, (dy << 16) | dx);
 OUTREG(DST_HEIGHT_WIDTH, (h << 16) | w);
}
