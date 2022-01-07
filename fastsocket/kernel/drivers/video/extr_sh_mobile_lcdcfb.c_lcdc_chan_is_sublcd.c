
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ chan; } ;
struct sh_mobile_lcdc_chan {TYPE_1__ cfg; } ;


 scalar_t__ LCDC_CHAN_SUBLCD ;

__attribute__((used)) static int lcdc_chan_is_sublcd(struct sh_mobile_lcdc_chan *chan)
{
 return chan->cfg.chan == LCDC_CHAN_SUBLCD;
}
