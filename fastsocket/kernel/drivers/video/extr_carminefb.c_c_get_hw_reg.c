
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct carmine_hw {scalar_t__ v_regs; } ;


 scalar_t__ readl (scalar_t__) ;

__attribute__((used)) static u32 c_get_hw_reg(const struct carmine_hw *hw,
  u32 offset)
{
 return readl(hw->v_regs + offset);
}
