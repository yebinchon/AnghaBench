
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ base; } ;


 scalar_t__ MREG_END ;
 scalar_t__ MREG_START ;
 scalar_t__ __fsi_reg_read (scalar_t__) ;
 TYPE_1__* master ;

__attribute__((used)) static u32 fsi_master_read(u32 reg)
{
 if ((reg < MREG_START) ||
     (reg > MREG_END))
  return 0;

 return __fsi_reg_read((u32)(master->base + reg));
}
