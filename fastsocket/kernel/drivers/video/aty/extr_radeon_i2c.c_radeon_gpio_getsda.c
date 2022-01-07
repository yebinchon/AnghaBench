
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeonfb_info {int dummy; } ;
struct radeon_i2c_chan {int ddc_reg; struct radeonfb_info* rinfo; } ;


 int INREG (int ) ;
 int VGA_DDC_DATA_INPUT ;

__attribute__((used)) static int radeon_gpio_getsda(void* data)
{
 struct radeon_i2c_chan *chan = data;
 struct radeonfb_info *rinfo = chan->rinfo;
 u32 val;

 val = INREG(chan->ddc_reg);

 return (val & VGA_DDC_DATA_INPUT) ? 1 : 0;
}
