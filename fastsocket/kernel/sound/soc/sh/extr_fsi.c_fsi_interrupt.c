
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int irqreturn_t ;
struct TYPE_2__ {int fsib; int fsia; } ;


 int INT_A_OUT ;
 int INT_B_OUT ;
 int INT_ST ;
 int IRQ_HANDLED ;
 int SOFT_RST ;
 int fsi_data_push (int *) ;
 int fsi_master_read (int ) ;
 int fsi_master_write (int ,int) ;
 TYPE_1__* master ;

__attribute__((used)) static irqreturn_t fsi_interrupt(int irq, void *data)
{
 u32 status = fsi_master_read(SOFT_RST) & ~0x00000010;
 u32 int_st = fsi_master_read(INT_ST);


 fsi_master_write(SOFT_RST, status);
 fsi_master_write(SOFT_RST, status | 0x00000010);

 if (int_st & INT_A_OUT)
  fsi_data_push(&master->fsia);
 if (int_st & INT_B_OUT)
  fsi_data_push(&master->fsib);

 fsi_master_write(INT_ST, 0x0000000);

 return IRQ_HANDLED;
}
