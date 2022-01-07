
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sep_device {int in_use; } ;
struct inode {int dummy; } ;
struct file {struct sep_device* private_data; } ;


 int HW_HOST_IMR_REG_ADDR ;
 int SEP_DIRVER_IRQ_NUM ;
 int clear_bit (int ,int *) ;
 int free_irq (int ,struct sep_device*) ;
 int sep_event ;
 int sep_write_reg (struct sep_device*,int ,int) ;
 int wake_up (int *) ;

__attribute__((used)) static int sep_release(struct inode *inode, struct file *filp)
{
 struct sep_device *sep = filp->private_data;
 clear_bit(0, &sep->in_use);
 wake_up(&sep_event);
 return 0;
}
