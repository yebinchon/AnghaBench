
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {scalar_t__ vfebase; } ;


 scalar_t__ VFE_AXI_CMD ;
 TYPE_1__* ctrl ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void vfe_program_axi_cmd(uint32_t value)
{
 writel(value, ctrl->vfebase + VFE_AXI_CMD);
}
