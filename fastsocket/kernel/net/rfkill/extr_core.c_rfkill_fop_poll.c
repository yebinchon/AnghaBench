
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rfkill_data {int mtx; int events; int read_wait; } ;
struct file {struct rfkill_data* private_data; } ;
typedef int poll_table ;


 unsigned int POLLIN ;
 unsigned int POLLOUT ;
 unsigned int POLLRDNORM ;
 unsigned int POLLWRNORM ;
 int list_empty (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int poll_wait (struct file*,int *,int *) ;

__attribute__((used)) static unsigned int rfkill_fop_poll(struct file *file, poll_table *wait)
{
 struct rfkill_data *data = file->private_data;
 unsigned int res = POLLOUT | POLLWRNORM;

 poll_wait(file, &data->read_wait, wait);

 mutex_lock(&data->mtx);
 if (!list_empty(&data->events))
  res = POLLIN | POLLRDNORM;
 mutex_unlock(&data->mtx);

 return res;
}
