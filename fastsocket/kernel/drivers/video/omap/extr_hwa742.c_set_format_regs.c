
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int window_type; TYPE_1__* fbdev; } ;
struct TYPE_3__ {int dev; } ;


 int HWA742_INPUT_MODE_REG ;
 int HWA742_TRANSL_MODE_REG1 ;
 int HWA742_WINDOW_TYPE ;
 int OMAPFB_FORMAT_FLAG_DOUBLE ;
 int dev_dbg (int ,char*) ;
 TYPE_2__ hwa742 ;
 int hwa742_write_reg (int ,int) ;

__attribute__((used)) static void set_format_regs(int conv, int transl, int flags)
{
 if (flags & OMAPFB_FORMAT_FLAG_DOUBLE) {
  hwa742.window_type = ((hwa742.window_type & 0xfc) | 0x01);



 } else {
  hwa742.window_type = (hwa742.window_type & 0xfc);



 }

 hwa742_write_reg(HWA742_INPUT_MODE_REG, conv);
 hwa742_write_reg(HWA742_TRANSL_MODE_REG1, transl);
 hwa742_write_reg(HWA742_WINDOW_TYPE, hwa742.window_type);
}
