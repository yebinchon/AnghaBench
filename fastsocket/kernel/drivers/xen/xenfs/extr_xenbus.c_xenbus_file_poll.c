
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenbus_file_priv {int read_buffers; int read_waitq; } ;
struct file {struct xenbus_file_priv* private_data; } ;
typedef int poll_table ;


 unsigned int POLLIN ;
 unsigned int POLLRDNORM ;
 int list_empty (int *) ;
 int poll_wait (struct file*,int *,int *) ;

__attribute__((used)) static unsigned int xenbus_file_poll(struct file *file, poll_table *wait)
{
 struct xenbus_file_priv *u = file->private_data;

 poll_wait(file, &u->read_waitq, wait);
 if (!list_empty(&u->read_buffers))
  return POLLIN | POLLRDNORM;
 return 0;
}
