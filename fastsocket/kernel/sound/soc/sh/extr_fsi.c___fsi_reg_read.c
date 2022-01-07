
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int ctrl_inl (int ) ;

__attribute__((used)) static u32 __fsi_reg_read(u32 reg)
{
 return ctrl_inl(reg);
}
