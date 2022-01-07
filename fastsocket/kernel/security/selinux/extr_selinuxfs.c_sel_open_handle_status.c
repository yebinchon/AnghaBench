
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct inode {int dummy; } ;
struct file {struct page* private_data; } ;


 int ENOMEM ;
 struct page* selinux_kernel_status_page () ;

__attribute__((used)) static int sel_open_handle_status(struct inode *inode, struct file *filp)
{
 struct page *status = selinux_kernel_status_page();

 if (!status)
  return -ENOMEM;

 filp->private_data = status;

 return 0;
}
