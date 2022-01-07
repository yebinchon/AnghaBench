
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int EBUSY ;
 int atomic_dec (int *) ;
 int atomic_inc_return (int *) ;
 int nonseekable_open (struct inode*,struct file*) ;
 int wdrtas_miscdev_open ;
 int wdrtas_timer_keepalive () ;
 int wdrtas_timer_start () ;

__attribute__((used)) static int wdrtas_open(struct inode *inode, struct file *file)
{

 if (atomic_inc_return(&wdrtas_miscdev_open) > 1) {
  atomic_dec(&wdrtas_miscdev_open);
  return -EBUSY;
 }

 wdrtas_timer_start();
 wdrtas_timer_keepalive();

 return nonseekable_open(inode, file);
}
