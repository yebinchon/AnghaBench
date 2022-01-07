
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {TYPE_1__* extif; } ;
struct TYPE_3__ {int (* enable_tearsync ) (int ,int ) ;} ;


 int BLIZZARD_NDISP_CTRL_STATUS ;
 TYPE_2__ blizzard ;
 int blizzard_read_reg (int ) ;
 int blizzard_write_reg (int ,int) ;
 int stub1 (int ,int ) ;

__attribute__((used)) static void disable_tearsync(void)
{
 u8 b;

 blizzard.extif->enable_tearsync(0, 0);
 b = blizzard_read_reg(BLIZZARD_NDISP_CTRL_STATUS);
 b &= ~(1 << 3);
 blizzard_write_reg(BLIZZARD_NDISP_CTRL_STATUS, b);
 b = blizzard_read_reg(BLIZZARD_NDISP_CTRL_STATUS);
}
