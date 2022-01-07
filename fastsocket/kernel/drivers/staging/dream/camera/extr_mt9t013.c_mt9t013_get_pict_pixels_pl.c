
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_4__ {TYPE_1__* reg_pat; } ;
struct TYPE_3__ {int line_length_pck; } ;


 size_t RES_CAPTURE ;
 TYPE_2__ mt9t013_regs ;

__attribute__((used)) static uint16_t mt9t013_get_pict_pixels_pl(void)
{
 return mt9t013_regs.reg_pat[RES_CAPTURE].line_length_pck;
}
