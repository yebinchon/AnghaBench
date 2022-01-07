
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct fsi_priv {scalar_t__ base; } ;


 scalar_t__ REG_END ;
 int __fsi_reg_write (scalar_t__,scalar_t__) ;

__attribute__((used)) static int fsi_reg_write(struct fsi_priv *fsi, u32 reg, u32 data)
{
 if (reg > REG_END)
  return -1;

 return __fsi_reg_write((u32)(fsi->base + reg), data);
}
