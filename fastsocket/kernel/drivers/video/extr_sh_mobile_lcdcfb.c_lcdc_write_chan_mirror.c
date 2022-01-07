
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sh_mobile_lcdc_chan {scalar_t__* reg_offs; TYPE_1__* lcdc; } ;
struct TYPE_2__ {scalar_t__ base; } ;


 scalar_t__ MIRROR_OFFSET ;
 int iowrite32 (unsigned long,scalar_t__) ;

__attribute__((used)) static void lcdc_write_chan_mirror(struct sh_mobile_lcdc_chan *chan,
       int reg_nr, unsigned long data)
{
 iowrite32(data, chan->lcdc->base + chan->reg_offs[reg_nr] +
    MIRROR_OFFSET);
}
