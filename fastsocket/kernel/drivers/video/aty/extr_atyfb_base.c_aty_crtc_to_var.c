
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_8__ {int offset; int length; } ;
struct TYPE_7__ {int length; int offset; } ;
struct TYPE_6__ {int offset; int length; } ;
struct TYPE_5__ {int offset; int length; } ;
struct fb_var_screeninfo {int xres; int yres; int bits_per_pixel; int left_margin; int right_margin; int upper_margin; int lower_margin; int hsync_len; int vsync_len; int sync; int vmode; int yres_virtual; int xres_virtual; TYPE_4__ transp; TYPE_3__ blue; TYPE_2__ green; TYPE_1__ red; } ;
struct crtc {int h_tot_disp; int h_sync_strt_wid; int v_tot_disp; int v_sync_strt_wid; int gen_cntl; int vyres; int vxres; } ;


 int CRTC_CSYNC_EN ;
 int CRTC_DBL_SCAN_EN ;
 int CRTC_INTERLACE_EN ;






 int CRTC_PIX_WIDTH_MASK ;
 int EINVAL ;
 int FB_SYNC_COMP_HIGH_ACT ;
 int FB_SYNC_HOR_HIGH_ACT ;
 int FB_SYNC_VERT_HIGH_ACT ;
 int FB_VMODE_DOUBLE ;
 int FB_VMODE_INTERLACED ;
 int FB_VMODE_NONINTERLACED ;
 int PRINTKE (char*) ;

__attribute__((used)) static int aty_crtc_to_var(const struct crtc *crtc,
      struct fb_var_screeninfo *var)
{
 u32 xres, yres, bpp, left, right, upper, lower, hslen, vslen, sync;
 u32 h_total, h_disp, h_sync_strt, h_sync_dly, h_sync_wid, h_sync_pol;
 u32 v_total, v_disp, v_sync_strt, v_sync_wid, v_sync_pol, c_sync;
 u32 pix_width;
 u32 double_scan, interlace;


 h_total = crtc->h_tot_disp & 0x1ff;
 h_disp = (crtc->h_tot_disp >> 16) & 0xff;
 h_sync_strt = (crtc->h_sync_strt_wid & 0xff) | ((crtc->h_sync_strt_wid >> 4) & 0x100);
 h_sync_dly = (crtc->h_sync_strt_wid >> 8) & 0x7;
 h_sync_wid = (crtc->h_sync_strt_wid >> 16) & 0x1f;
 h_sync_pol = (crtc->h_sync_strt_wid >> 21) & 0x1;
 v_total = crtc->v_tot_disp & 0x7ff;
 v_disp = (crtc->v_tot_disp >> 16) & 0x7ff;
 v_sync_strt = crtc->v_sync_strt_wid & 0x7ff;
 v_sync_wid = (crtc->v_sync_strt_wid >> 16) & 0x1f;
 v_sync_pol = (crtc->v_sync_strt_wid >> 21) & 0x1;
 c_sync = crtc->gen_cntl & CRTC_CSYNC_EN ? 1 : 0;
 pix_width = crtc->gen_cntl & CRTC_PIX_WIDTH_MASK;
 double_scan = crtc->gen_cntl & CRTC_DBL_SCAN_EN;
 interlace = crtc->gen_cntl & CRTC_INTERLACE_EN;


 xres = (h_disp + 1) * 8;
 yres = v_disp + 1;
 left = (h_total - h_sync_strt - h_sync_wid) * 8 - h_sync_dly;
 right = (h_sync_strt - h_disp) * 8 + h_sync_dly;
 hslen = h_sync_wid * 8;
 upper = v_total - v_sync_strt - v_sync_wid;
 lower = v_sync_strt - v_disp;
 vslen = v_sync_wid;
 sync = (h_sync_pol ? 0 : FB_SYNC_HOR_HIGH_ACT) |
  (v_sync_pol ? 0 : FB_SYNC_VERT_HIGH_ACT) |
  (c_sync ? FB_SYNC_COMP_HIGH_ACT : 0);

 switch (pix_width) {
 case 128:
  bpp = 8;
  var->red.offset = 0;
  var->red.length = 8;
  var->green.offset = 0;
  var->green.length = 8;
  var->blue.offset = 0;
  var->blue.length = 8;
  var->transp.offset = 0;
  var->transp.length = 0;
  break;
 case 133:
  bpp = 16;
  var->red.offset = 10;
  var->red.length = 5;
  var->green.offset = 5;
  var->green.length = 5;
  var->blue.offset = 0;
  var->blue.length = 5;
  var->transp.offset = 0;
  var->transp.length = 0;
  break;
 case 132:
  bpp = 16;
  var->red.offset = 11;
  var->red.length = 5;
  var->green.offset = 5;
  var->green.length = 6;
  var->blue.offset = 0;
  var->blue.length = 5;
  var->transp.offset = 0;
  var->transp.length = 0;
  break;
 case 131:
  bpp = 24;
  var->red.offset = 16;
  var->red.length = 8;
  var->green.offset = 8;
  var->green.length = 8;
  var->blue.offset = 0;
  var->blue.length = 8;
  var->transp.offset = 0;
  var->transp.length = 0;
  break;
 case 130:
  bpp = 32;
  var->red.offset = 16;
  var->red.length = 8;
  var->green.offset = 8;
  var->green.length = 8;
  var->blue.offset = 0;
  var->blue.length = 8;
  var->transp.offset = 24;
  var->transp.length = 8;
  break;
 default:
  PRINTKE("Invalid pixel width\n");
  return -EINVAL;
 }


 var->xres = xres;
 var->yres = yres;
 var->xres_virtual = crtc->vxres;
 var->yres_virtual = crtc->vyres;
 var->bits_per_pixel = bpp;
 var->left_margin = left;
 var->right_margin = right;
 var->upper_margin = upper;
 var->lower_margin = lower;
 var->hsync_len = hslen;
 var->vsync_len = vslen;
 var->sync = sync;
 var->vmode = FB_VMODE_NONINTERLACED;






 if (interlace)
  var->vmode = FB_VMODE_INTERLACED;

 if (double_scan) {
  var->vmode = FB_VMODE_DOUBLE;
  var->yres >>= 1;
  var->upper_margin >>= 1;
  var->lower_margin >>= 1;
  var->vsync_len >>= 1;
 }

 return 0;
}
