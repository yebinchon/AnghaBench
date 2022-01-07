
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_6__ {scalar_t__ prev_res; } ;
struct TYPE_5__ {TYPE_1__* reg_pat; } ;
struct TYPE_4__ {int frame_length_lines; int line_length_pck; int pll_multiplier; } ;


 scalar_t__ QTR_SIZE ;
 size_t RES_CAPTURE ;
 size_t RES_PREVIEW ;
 TYPE_3__* mt9p012_ctrl ;
 TYPE_2__ mt9p012_regs ;

__attribute__((used)) static void mt9p012_get_pict_fps(uint16_t fps, uint16_t *pfps)
{

 uint32_t divider;
 uint32_t pclk_mult;

 if (mt9p012_ctrl->prev_res == QTR_SIZE) {
  divider = (uint32_t)
  (((mt9p012_regs.reg_pat[RES_PREVIEW].frame_length_lines *
  mt9p012_regs.reg_pat[RES_PREVIEW].line_length_pck) * 0x00000400) /
  (mt9p012_regs.reg_pat[RES_CAPTURE].frame_length_lines *
  mt9p012_regs.reg_pat[RES_CAPTURE].line_length_pck));

  pclk_mult =
  (uint32_t) ((mt9p012_regs.reg_pat[RES_CAPTURE].pll_multiplier *
  0x00000400) / (mt9p012_regs.reg_pat[RES_PREVIEW].pll_multiplier));
 } else {

  divider = 0x00000400;
  pclk_mult = 0x00000400;
 }


 *pfps = (uint16_t) (fps * divider * pclk_mult / 0x00000400 /
  0x00000400);
}
