
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_6__ {scalar_t__ prev_res; } ;
struct TYPE_5__ {TYPE_1__* reg_pat; } ;
struct TYPE_4__ {int frame_length_lines; } ;


 scalar_t__ QTR_SIZE ;
 size_t RES_CAPTURE ;
 size_t RES_PREVIEW ;
 TYPE_3__* mt9p012_ctrl ;
 TYPE_2__ mt9p012_regs ;

__attribute__((used)) static uint16_t mt9p012_get_prev_lines_pf(void)
{
 if (mt9p012_ctrl->prev_res == QTR_SIZE)
  return mt9p012_regs.reg_pat[RES_PREVIEW].frame_length_lines;
 else
  return mt9p012_regs.reg_pat[RES_CAPTURE].frame_length_lines;
}
