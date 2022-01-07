
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intelfb_info {int dummy; } ;
struct intelfb_i2c_chan {int reg; struct intelfb_info* dinfo; } ;


 int INREG (int ) ;
 int OUTREG (int ,int ) ;
 int SCL_DIR_MASK ;
 int SCL_VAL_IN ;

__attribute__((used)) static int intelfb_gpio_getscl(void *data)
{
 struct intelfb_i2c_chan *chan = data;
 struct intelfb_info *dinfo = chan->dinfo;
 u32 val;

 OUTREG(chan->reg, SCL_DIR_MASK);
 OUTREG(chan->reg, 0);
 val = INREG(chan->reg);
 return ((val & SCL_VAL_IN) != 0);
}
