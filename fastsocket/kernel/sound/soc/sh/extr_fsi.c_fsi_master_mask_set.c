
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ base; } ;


 scalar_t__ MREG_END ;
 scalar_t__ MREG_START ;
 int __fsi_reg_mask_set (scalar_t__,scalar_t__,scalar_t__) ;
 TYPE_1__* master ;

__attribute__((used)) static int fsi_master_mask_set(u32 reg, u32 mask, u32 data)
{
 if ((reg < MREG_START) ||
     (reg > MREG_END))
  return -1;

 return __fsi_reg_mask_set((u32)(master->base + reg), mask, data);
}
