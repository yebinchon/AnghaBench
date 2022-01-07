
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {TYPE_1__* extif; } ;
struct TYPE_3__ {int (* enable_tearsync ) (int ,int ) ;} ;


 int HWA742_NDP_CTRL ;
 TYPE_2__ hwa742 ;
 int hwa742_read_reg (int ) ;
 int hwa742_write_reg (int ,int) ;
 int stub1 (int ,int ) ;

__attribute__((used)) static void disable_tearsync(void)
{
 u8 b;

 hwa742.extif->enable_tearsync(0, 0);

 b = hwa742_read_reg(HWA742_NDP_CTRL);
 b &= ~(1 << 2);
 hwa742_write_reg(HWA742_NDP_CTRL, b);
}
