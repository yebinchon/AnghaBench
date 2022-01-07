
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rchan_buf {int read_wait; scalar_t__ finalized; } ;
struct file {int f_mode; struct rchan_buf* private_data; } ;
typedef int poll_table ;


 int FMODE_READ ;
 unsigned int POLLERR ;
 unsigned int POLLIN ;
 unsigned int POLLRDNORM ;
 int poll_wait (struct file*,int *,int *) ;
 int relay_buf_empty (struct rchan_buf*) ;

__attribute__((used)) static unsigned int relay_file_poll(struct file *filp, poll_table *wait)
{
 unsigned int mask = 0;
 struct rchan_buf *buf = filp->private_data;

 if (buf->finalized)
  return POLLERR;

 if (filp->f_mode & FMODE_READ) {
  poll_wait(filp, &buf->read_wait, wait);
  if (!relay_buf_empty(buf))
   mask |= POLLIN | POLLRDNORM;
 }

 return mask;
}
