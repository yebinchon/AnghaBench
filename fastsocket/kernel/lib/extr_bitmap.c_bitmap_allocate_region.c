
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EBUSY ;
 int REG_OP_ALLOC ;
 int REG_OP_ISFREE ;
 int __reg_op (unsigned long*,int,int,int ) ;

int bitmap_allocate_region(unsigned long *bitmap, int pos, int order)
{
 if (!__reg_op(bitmap, pos, order, REG_OP_ISFREE))
  return -EBUSY;
 __reg_op(bitmap, pos, order, REG_OP_ALLOC);
 return 0;
}
