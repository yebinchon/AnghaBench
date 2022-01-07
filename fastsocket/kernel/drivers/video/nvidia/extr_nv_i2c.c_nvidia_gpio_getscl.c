
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvidia_par {int dummy; } ;
struct nvidia_i2c_chan {int ddc_base; struct nvidia_par* par; } ;


 int NVReadCrtc (struct nvidia_par*,int ) ;

__attribute__((used)) static int nvidia_gpio_getscl(void *data)
{
 struct nvidia_i2c_chan *chan = data;
 struct nvidia_par *par = chan->par;
 u32 val = 0;

 if (NVReadCrtc(par, chan->ddc_base) & 0x04)
  val = 1;

 return val;
}
