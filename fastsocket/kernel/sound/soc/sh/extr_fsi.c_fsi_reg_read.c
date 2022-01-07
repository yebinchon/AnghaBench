
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct fsi_priv {scalar_t__ base; } ;


 scalar_t__ REG_END ;
 scalar_t__ __fsi_reg_read (scalar_t__) ;

__attribute__((used)) static u32 fsi_reg_read(struct fsi_priv *fsi, u32 reg)
{
 if (reg > REG_END)
  return 0;

 return __fsi_reg_read((u32)(fsi->base + reg));
}
