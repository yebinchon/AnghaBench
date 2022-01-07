
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int __fsi_reg_read (int) ;
 int __fsi_reg_write (int,int) ;

__attribute__((used)) static int __fsi_reg_mask_set(u32 reg, u32 mask, u32 data)
{
 u32 val = __fsi_reg_read(reg);

 val &= ~mask;
 val |= data & mask;

 return __fsi_reg_write(reg, val);
}
