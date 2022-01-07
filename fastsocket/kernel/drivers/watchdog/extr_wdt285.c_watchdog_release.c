
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int IRQ_TIMER4 ;
 int clear_bit (int,int *) ;
 int free_irq (int ,int *) ;
 int timer_alive ;

__attribute__((used)) static int watchdog_release(struct inode *inode, struct file *file)
{




 return 0;
}
