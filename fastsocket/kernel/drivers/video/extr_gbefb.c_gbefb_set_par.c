
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int width; int height; } ;
struct gbefb_par {TYPE_3__ timing; } ;
struct TYPE_7__ {int line_length; void* visual; } ;
struct TYPE_11__ {int bits_per_pixel; int xres_virtual; } ;
struct fb_info {TYPE_1__ fix; TYPE_5__ var; scalar_t__ par; } ;
struct TYPE_10__ {unsigned int* mode_regs; int vt_intr01; int vt_intr23; unsigned int frm_control; unsigned int frm_size_tile; unsigned int frm_size_pixel; int* gmap; scalar_t__ crs_ctl; scalar_t__ ovr_width_tile; scalar_t__ did_control; } ;
struct TYPE_8__ {int dma; } ;


 int BUF ;
 int FB_HEIGHT_PIX ;
 void* FB_VISUAL_PSEUDOCOLOR ;
 void* FB_VISUAL_TRUECOLOR ;
 int FRM_CONTROL ;
 int FRM_DEPTH ;
 int FRM_DMA_ENABLE ;
 int FRM_LINEAR ;
 int FRM_RHS ;
 int FRM_SIZE_PIXEL ;
 int FRM_SIZE_TILE ;
 int FRM_TILE_PTR ;
 int FRM_WIDTH_TILE ;
 int GBE_BMODE_BOTH ;
 int GBE_CMODE_ARGB5 ;
 int GBE_CMODE_I8 ;
 int GBE_CMODE_RGB8 ;
 int GBE_FRM_DEPTH_16 ;
 int GBE_FRM_DEPTH_32 ;
 int GBE_FRM_DEPTH_8 ;
 int SET_GBE_FIELD (int ,int ,unsigned int,int) ;
 int TYP ;
 int WID ;
 int compute_gbe_timing (TYPE_5__*,TYPE_3__*) ;
 TYPE_4__* gbe ;
 int* gbe_cmap ;
 int gbe_loadcmap () ;
 int gbe_set_timing_info (TYPE_3__*) ;
 TYPE_2__ gbe_tiles ;
 int gbe_turn_off () ;
 int gbe_turn_on () ;
 int udelay (int) ;

__attribute__((used)) static int gbefb_set_par(struct fb_info *info)
{
 int i;
 unsigned int val;
 int wholeTilesX, partTilesX, maxPixelsPerTileX;
 int height_pix;
 int xpmax, ypmax;
 int bytesPerPixel;
 struct gbefb_par *par = (struct gbefb_par *) info->par;

 compute_gbe_timing(&info->var, &par->timing);

 bytesPerPixel = info->var.bits_per_pixel / 8;
 info->fix.line_length = info->var.xres_virtual * bytesPerPixel;
 xpmax = par->timing.width;
 ypmax = par->timing.height;


 gbe_turn_off();


 gbe_set_timing_info(&par->timing);


 val = 0;
 switch (bytesPerPixel) {
 case 1:
  SET_GBE_FIELD(WID, TYP, val, GBE_CMODE_I8);
  info->fix.visual = FB_VISUAL_PSEUDOCOLOR;
  break;
 case 2:
  SET_GBE_FIELD(WID, TYP, val, GBE_CMODE_ARGB5);
  info->fix.visual = FB_VISUAL_TRUECOLOR;
  break;
 case 4:
  SET_GBE_FIELD(WID, TYP, val, GBE_CMODE_RGB8);
  info->fix.visual = FB_VISUAL_TRUECOLOR;
  break;
 }
 SET_GBE_FIELD(WID, BUF, val, GBE_BMODE_BOTH);

 for (i = 0; i < 32; i++)
  gbe->mode_regs[i] = val;


 gbe->vt_intr01 = 0xffffffff;
 gbe->vt_intr23 = 0xffffffff;
 val = 0;
 SET_GBE_FIELD(FRM_CONTROL, FRM_TILE_PTR, val, gbe_tiles.dma >> 9);
 SET_GBE_FIELD(FRM_CONTROL, FRM_DMA_ENABLE, val, 0);
 SET_GBE_FIELD(FRM_CONTROL, FRM_LINEAR, val, 0);
 gbe->frm_control = val;

 maxPixelsPerTileX = 512 / bytesPerPixel;
 wholeTilesX = 1;
 partTilesX = 0;


 val = 0;
 SET_GBE_FIELD(FRM_SIZE_TILE, FRM_WIDTH_TILE, val, wholeTilesX);
 SET_GBE_FIELD(FRM_SIZE_TILE, FRM_RHS, val, partTilesX);

 switch (bytesPerPixel) {
 case 1:
  SET_GBE_FIELD(FRM_SIZE_TILE, FRM_DEPTH, val,
         GBE_FRM_DEPTH_8);
  break;
 case 2:
  SET_GBE_FIELD(FRM_SIZE_TILE, FRM_DEPTH, val,
         GBE_FRM_DEPTH_16);
  break;
 case 4:
  SET_GBE_FIELD(FRM_SIZE_TILE, FRM_DEPTH, val,
         GBE_FRM_DEPTH_32);
  break;
 }
 gbe->frm_size_tile = val;


 height_pix = xpmax * ypmax / maxPixelsPerTileX;

 val = 0;
 SET_GBE_FIELD(FRM_SIZE_PIXEL, FB_HEIGHT_PIX, val, height_pix);
 gbe->frm_size_pixel = val;


 gbe->did_control = 0;
 gbe->ovr_width_tile = 0;


 gbe->crs_ctl = 0;


 gbe_turn_on();


 udelay(10);
 for (i = 0; i < 256; i++)
  gbe->gmap[i] = (i << 24) | (i << 16) | (i << 8);


 for (i = 0; i < 256; i++)
  gbe_cmap[i] = (i << 8) | (i << 16) | (i << 24);

 gbe_loadcmap();

 return 0;
}
