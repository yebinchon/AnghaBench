
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_2__ {int size_h; int blk_l; int size_w; int blk_p; } ;


 size_t S_RES_CAPTURE ;
 size_t S_RES_PREVIEW ;
 TYPE_1__* s5k3e2fx_reg_pat ;

__attribute__((used)) static void s5k3e2fx_get_pict_fps(uint16_t fps, uint16_t *pfps)
{

 uint32_t divider;

 divider = (uint32_t)
  ((s5k3e2fx_reg_pat[S_RES_PREVIEW].size_h +
   s5k3e2fx_reg_pat[S_RES_PREVIEW].blk_l) *
   (s5k3e2fx_reg_pat[S_RES_PREVIEW].size_w +
   s5k3e2fx_reg_pat[S_RES_PREVIEW].blk_p)) * 0x00000400 /
  ((s5k3e2fx_reg_pat[S_RES_CAPTURE].size_h +
   s5k3e2fx_reg_pat[S_RES_CAPTURE].blk_l) *
   (s5k3e2fx_reg_pat[S_RES_CAPTURE].size_w +
   s5k3e2fx_reg_pat[S_RES_CAPTURE].blk_p));


 *pfps = (uint16_t)(fps * divider / 0x00000400);
}
