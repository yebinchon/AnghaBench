
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sep_device {int dummy; } ;


 int HW_SRAM_DATA_READY_REG_ADDR ;
 int sep_read_reg (struct sep_device*,int ) ;

__attribute__((used)) static inline void sep_wait_sram_write(struct sep_device *dev)
{
 u32 reg_val;
 do
  reg_val = sep_read_reg(dev, HW_SRAM_DATA_READY_REG_ADDR);
 while (!(reg_val & 1));
}
