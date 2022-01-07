
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct per_user_data {scalar_t__ ring_cons; scalar_t__ ring_prod; scalar_t__ ring_overflow; int evtchn_wait; } ;
struct file {struct per_user_data* private_data; } ;
typedef int poll_table ;


 unsigned int POLLERR ;
 unsigned int POLLIN ;
 unsigned int POLLOUT ;
 unsigned int POLLRDNORM ;
 unsigned int POLLWRNORM ;
 int poll_wait (struct file*,int *,int *) ;

__attribute__((used)) static unsigned int evtchn_poll(struct file *file, poll_table *wait)
{
 unsigned int mask = POLLOUT | POLLWRNORM;
 struct per_user_data *u = file->private_data;

 poll_wait(file, &u->evtchn_wait, wait);
 if (u->ring_cons != u->ring_prod)
  mask |= POLLIN | POLLRDNORM;
 if (u->ring_overflow)
  mask = POLLERR;
 return mask;
}
