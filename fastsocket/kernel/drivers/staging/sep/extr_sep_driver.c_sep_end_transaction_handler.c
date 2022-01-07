
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sep_device {int dummy; } ;


 int HW_HOST_IMR_REG_ADDR ;
 int SEP_DIRVER_IRQ_NUM ;
 int dbg (char*) ;
 int free_irq (int ,struct sep_device*) ;
 int mutex_unlock (int *) ;
 int sep_mutex ;
 int sep_write_reg (struct sep_device*,int ,int) ;

__attribute__((used)) static int sep_end_transaction_handler(struct sep_device *sep, unsigned long arg)
{
 dbg("SEP Driver:--------> sep_end_transaction_handler start\n");
 dbg("SEP Driver:<-------- sep_end_transaction_handler end\n");

 return 0;
}
