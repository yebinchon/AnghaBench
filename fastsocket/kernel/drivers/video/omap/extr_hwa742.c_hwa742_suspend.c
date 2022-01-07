
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sys_ck; int update_mode; int update_mode_before_suspend; } ;


 int HWA742_POWER_SAVE ;
 int OMAPFB_UPDATE_DISABLED ;
 int clk_disable (int ) ;
 TYPE_1__ hwa742 ;
 int hwa742_set_update_mode (int ) ;
 int hwa742_write_reg (int ,int) ;

__attribute__((used)) static void hwa742_suspend(void)
{
 hwa742.update_mode_before_suspend = hwa742.update_mode;
 hwa742_set_update_mode(OMAPFB_UPDATE_DISABLED);

 hwa742_write_reg(HWA742_POWER_SAVE, 1 << 1);
 clk_disable(hwa742.sys_ck);
}
