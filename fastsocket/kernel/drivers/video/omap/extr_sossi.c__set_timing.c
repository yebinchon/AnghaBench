
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int fck_hz; int fck; TYPE_1__* fbdev; } ;
struct TYPE_3__ {int dev; } ;


 int SOSSI_INIT1_REG ;
 int clk_disable (int ) ;
 int clk_enable (int ) ;
 int clk_set_rate (int ,int) ;
 int dev_dbg (int ,char*,int,int,int) ;
 TYPE_2__ sossi ;
 int sossi_read_reg (int ) ;
 int sossi_write_reg (int ,int) ;

__attribute__((used)) static void _set_timing(int div, int tw0, int tw1)
{
 u32 l;






 clk_set_rate(sossi.fck, sossi.fck_hz / div);
 clk_enable(sossi.fck);
 l = sossi_read_reg(SOSSI_INIT1_REG);
 l &= ~((0x0f << 20) | (0x3f << 24));
 l |= (tw0 << 20) | (tw1 << 24);
 sossi_write_reg(SOSSI_INIT1_REG, l);
 clk_disable(sossi.fck);
}
