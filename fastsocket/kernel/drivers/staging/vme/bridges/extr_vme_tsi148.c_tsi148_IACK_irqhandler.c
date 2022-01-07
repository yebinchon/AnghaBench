
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int TSI148_LCSR_INTC_IACKC ;
 int iack_queue ;
 int printk (char*) ;
 int wake_up (int *) ;

__attribute__((used)) static u32 tsi148_IACK_irqhandler(void)
{
 printk("tsi148_IACK_irqhandler\n");
 wake_up(&iack_queue);

 return TSI148_LCSR_INTC_IACKC;
}
