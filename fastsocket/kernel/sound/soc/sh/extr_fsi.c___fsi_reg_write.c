
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int ctrl_outl (int,int) ;

__attribute__((used)) static int __fsi_reg_write(u32 reg, u32 data)
{

 data &= 0x00ffffff;

 return ctrl_outl(data, reg);
}
