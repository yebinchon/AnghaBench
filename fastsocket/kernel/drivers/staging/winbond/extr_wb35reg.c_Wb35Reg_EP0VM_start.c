
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wb35_reg {int RegFireCount; int EP0vm_state; } ;
struct hw_data {struct wb35_reg reg; } ;


 int VM_RUNNING ;
 int Wb35Reg_EP0VM (struct hw_data*) ;
 int atomic_dec (int *) ;
 int atomic_inc_return (int *) ;

void
Wb35Reg_EP0VM_start( struct hw_data * pHwData )
{
 struct wb35_reg *reg = &pHwData->reg;

 if (atomic_inc_return(&reg->RegFireCount) == 1) {
  reg->EP0vm_state = VM_RUNNING;
  Wb35Reg_EP0VM(pHwData);
 } else
  atomic_dec(&reg->RegFireCount);
}
