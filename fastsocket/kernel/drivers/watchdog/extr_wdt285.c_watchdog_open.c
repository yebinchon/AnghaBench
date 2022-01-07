
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int* CSR_SA110_CNTL ;
 scalar_t__* CSR_TIMER4_CLR ;
 int* CSR_TIMER4_CNTL ;
 int EBUSY ;
 int IRQ_TIMER4 ;
 int TIMER_CNTL_AUTORELOAD ;
 int TIMER_CNTL_DIV256 ;
 int TIMER_CNTL_ENABLE ;
 int clear_bit (int,int *) ;
 int mem_fclk_21285 ;
 int nonseekable_open (struct inode*,struct file*) ;
 int reload ;
 int request_irq (int ,int ,int ,char*,int *) ;
 int soft_margin ;
 scalar_t__ test_and_set_bit (int,int *) ;
 int timer_alive ;
 int watchdog_fire ;
 int watchdog_ping () ;

__attribute__((used)) static int watchdog_open(struct inode *inode, struct file *file)
{
 int ret;

 if (*CSR_SA110_CNTL & (1 << 13))
  return -EBUSY;

 if (test_and_set_bit(1, &timer_alive))
  return -EBUSY;

 reload = soft_margin * (mem_fclk_21285 / 256);

 *CSR_TIMER4_CLR = 0;
 watchdog_ping();
 *CSR_TIMER4_CNTL = TIMER_CNTL_ENABLE | TIMER_CNTL_AUTORELOAD
  | TIMER_CNTL_DIV256;
 *CSR_SA110_CNTL |= 1 << 13;

 ret = 0;

 nonseekable_open(inode, file);
 return ret;
}
