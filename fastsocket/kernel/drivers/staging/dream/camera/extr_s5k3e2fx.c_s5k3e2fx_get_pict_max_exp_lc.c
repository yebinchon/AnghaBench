
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {scalar_t__ pict_res; } ;
struct TYPE_3__ {int size_h; int blk_l; } ;


 scalar_t__ S_QTR_SIZE ;
 size_t S_RES_PREVIEW ;
 TYPE_2__* s5k3e2fx_ctrl ;
 TYPE_1__* s5k3e2fx_reg_pat ;

__attribute__((used)) static uint32_t s5k3e2fx_get_pict_max_exp_lc(void)
{
 uint32_t snapshot_lines_per_frame;

 if (s5k3e2fx_ctrl->pict_res == S_QTR_SIZE)
  snapshot_lines_per_frame =
  s5k3e2fx_reg_pat[S_RES_PREVIEW].size_h +
  s5k3e2fx_reg_pat[S_RES_PREVIEW].blk_l;
 else
  snapshot_lines_per_frame = 3961 * 3;

 return snapshot_lines_per_frame;
}
