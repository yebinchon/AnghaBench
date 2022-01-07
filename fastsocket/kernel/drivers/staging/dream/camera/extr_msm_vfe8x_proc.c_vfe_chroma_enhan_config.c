
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct vfe_color_convert_cfg {int ConvertOffset; int v2; int v1; int v0; int kcr; int kcb; int dm; int dp; int cm; int cp; int bm; int bp; int am; int ap; } ;
struct vfe_cmd_chroma_enhan_config {int RGBtoYConversionOffset; int RGBtoYConversionV2; int RGBtoYConversionV1; int RGBtoYConversionV0; int kcr; int kcb; int dm; int dp; int cm; int cp; int bm; int bp; int am; int ap; int enable; } ;
struct vfe_chroma_enhance_cfg {int ConvertOffset; int v2; int v1; int v0; int kcr; int kcb; int dm; int dp; int cm; int cp; int bm; int bp; int am; int ap; } ;
typedef int cmd2 ;
typedef int cmd ;
struct TYPE_3__ {int chromaEnhanEnable; } ;
struct TYPE_4__ {scalar_t__ vfebase; TYPE_1__ vfeModuleEnableLocal; } ;


 scalar_t__ VFE_CHROMA_ENHAN_A ;
 scalar_t__ VFE_COLOR_CONVERT_COEFF_0 ;
 TYPE_2__* ctrl ;
 int memset (struct vfe_color_convert_cfg*,int ,int) ;
 int vfe_prog_hw (scalar_t__,int *,int) ;

void vfe_chroma_enhan_config(struct vfe_cmd_chroma_enhan_config *in)
{
 struct vfe_chroma_enhance_cfg cmd;
 struct vfe_color_convert_cfg cmd2;

 memset(&cmd, 0, sizeof(cmd));
 memset(&cmd2, 0, sizeof(cmd2));

 ctrl->vfeModuleEnableLocal.chromaEnhanEnable = in->enable;

 cmd.ap = in->ap;
 cmd.am = in->am;
 cmd.bp = in->bp;
 cmd.bm = in->bm;
 cmd.cp = in->cp;
 cmd.cm = in->cm;
 cmd.dp = in->dp;
 cmd.dm = in->dm;
 cmd.kcb = in->kcb;
 cmd.kcr = in->kcr;

 cmd2.v0 = in->RGBtoYConversionV0;
 cmd2.v1 = in->RGBtoYConversionV1;
 cmd2.v2 = in->RGBtoYConversionV2;
 cmd2.ConvertOffset = in->RGBtoYConversionOffset;

 vfe_prog_hw(ctrl->vfebase + VFE_CHROMA_ENHAN_A,
  (uint32_t *)&cmd, sizeof(cmd));

 vfe_prog_hw(ctrl->vfebase + VFE_COLOR_CONVERT_COEFF_0,
  (uint32_t *)&cmd2, sizeof(cmd2));
}
