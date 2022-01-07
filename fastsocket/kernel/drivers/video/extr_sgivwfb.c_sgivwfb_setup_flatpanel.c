
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct sgivw_par {int dummy; } ;
struct dbe_timing_info {int flags; int pll_m; int pll_n; int pll_p; } ;


 int DBE_SETREG (int ,scalar_t__) ;
 int FB_SYNC_HOR_HIGH_ACT ;
 int FB_SYNC_VERT_HIGH_ACT ;

 int FP_DE ;
 int FP_DE_OFF ;
 int FP_DE_ON ;
 int FP_HDRV ;
 int FP_HDRV_OFF ;
 int FP_VDRV ;
 int FP_VDRV_OFF ;
 int FP_VDRV_ON ;
 int HDRV_INVERT ;
 int SET_DBE_FIELD (int ,int ,scalar_t__,int) ;
 int VDRV_INVERT ;
 int VT_FLAGS ;
 int flatpanel_id ;
 int fp_de ;
 int fp_hdrv ;
 int fp_vdrv ;
 int vt_flags ;

__attribute__((used)) static void sgivwfb_setup_flatpanel(struct sgivw_par *par, struct dbe_timing_info *currentTiming)
{
 int fp_wid, fp_hgt, fp_vbs, fp_vbe;
 u32 outputVal = 0;

 SET_DBE_FIELD(VT_FLAGS, HDRV_INVERT, outputVal,
  (currentTiming->flags & FB_SYNC_HOR_HIGH_ACT) ? 0 : 1);
 SET_DBE_FIELD(VT_FLAGS, VDRV_INVERT, outputVal,
  (currentTiming->flags & FB_SYNC_VERT_HIGH_ACT) ? 0 : 1);
 DBE_SETREG(vt_flags, outputVal);


 switch (flatpanel_id) {
  case 128:
   fp_wid = 1600;
   fp_hgt = 1024;
   fp_vbs = 0;
   fp_vbe = 1600;
   currentTiming->pll_m = 4;
   currentTiming->pll_n = 1;
   currentTiming->pll_p = 0;
   break;
  default:
         fp_wid = fp_hgt = fp_vbs = fp_vbe = 0xfff;
   }

 outputVal = 0;
 SET_DBE_FIELD(FP_DE, FP_DE_ON, outputVal, fp_vbs);
 SET_DBE_FIELD(FP_DE, FP_DE_OFF, outputVal, fp_vbe);
 DBE_SETREG(fp_de, outputVal);
 outputVal = 0;
 SET_DBE_FIELD(FP_HDRV, FP_HDRV_OFF, outputVal, fp_wid);
 DBE_SETREG(fp_hdrv, outputVal);
 outputVal = 0;
 SET_DBE_FIELD(FP_VDRV, FP_VDRV_ON, outputVal, 1);
 SET_DBE_FIELD(FP_VDRV, FP_VDRV_OFF, outputVal, fp_hgt + 1);
 DBE_SETREG(fp_vdrv, outputVal);
}
