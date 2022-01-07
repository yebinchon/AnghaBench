
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sh_mobile_lcdc_chan {scalar_t__* reg_offs; TYPE_1__* lcdc; } ;
struct TYPE_2__ {scalar_t__ base; } ;


 scalar_t__ SIDE_B_OFFSET ;
 scalar_t__ banked (int) ;
 int iowrite32 (unsigned long,scalar_t__) ;

__attribute__((used)) static void lcdc_write_chan(struct sh_mobile_lcdc_chan *chan,
       int reg_nr, unsigned long data)
{
 iowrite32(data, chan->lcdc->base + chan->reg_offs[reg_nr]);
 if (banked(reg_nr))
  iowrite32(data, chan->lcdc->base + chan->reg_offs[reg_nr] +
     SIDE_B_OFFSET);
}
