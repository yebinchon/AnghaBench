
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int PCIO; } ;
struct riva_par {TYPE_1__ riva; } ;
struct riva_i2c_chan {int ddc_base; struct riva_par* par; } ;


 int VGA_RD08 (int ,int) ;
 int VGA_WR08 (int ,int,int) ;

__attribute__((used)) static void riva_gpio_setsda(void* data, int state)
{
 struct riva_i2c_chan *chan = data;
 struct riva_par *par = chan->par;
 u32 val;

 VGA_WR08(par->riva.PCIO, 0x3d4, chan->ddc_base + 1);
 val = VGA_RD08(par->riva.PCIO, 0x3d5) & 0xf0;

 if (state)
  val |= 0x10;
 else
  val &= ~0x10;

 VGA_WR08(par->riva.PCIO, 0x3d4, chan->ddc_base + 1);
 VGA_WR08(par->riva.PCIO, 0x3d5, val | 0x1);
}
