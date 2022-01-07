
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct poll_table_struct {int dummy; } ;
struct file {int f_mode; struct dev_state* private_data; } ;
struct dev_state {int async_completed; int wait; } ;


 int FMODE_WRITE ;
 unsigned int POLLERR ;
 unsigned int POLLHUP ;
 unsigned int POLLOUT ;
 unsigned int POLLWRNORM ;
 int connected (struct dev_state*) ;
 int list_empty (int *) ;
 int poll_wait (struct file*,int *,struct poll_table_struct*) ;

__attribute__((used)) static unsigned int usbdev_poll(struct file *file,
    struct poll_table_struct *wait)
{
 struct dev_state *ps = file->private_data;
 unsigned int mask = 0;

 poll_wait(file, &ps->wait, wait);
 if (file->f_mode & FMODE_WRITE && !list_empty(&ps->async_completed))
  mask |= POLLOUT | POLLWRNORM;
 if (!connected(ps))
  mask |= POLLERR | POLLHUP;
 return mask;
}
