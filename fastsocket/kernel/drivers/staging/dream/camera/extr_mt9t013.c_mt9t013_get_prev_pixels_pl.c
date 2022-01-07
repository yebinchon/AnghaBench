
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
struct TYPE_4__ {int line_length_pck; } ;


 scalar_t__ QTR_SIZE ;
 size_t RES_CAPTURE ;
 size_t RES_PREVIEW ;
 TYPE_3__* mt9t013_ctrl ;
 TYPE_2__ mt9t013_regs ;

__attribute__((used)) static uint16_t mt9t013_get_prev_pixels_pl(void)
{
 if (mt9t013_ctrl->prev_res == QTR_SIZE)
  return mt9t013_regs.reg_pat[RES_PREVIEW].line_length_pck;
 else
  return mt9t013_regs.reg_pat[RES_CAPTURE].line_length_pck;
}
