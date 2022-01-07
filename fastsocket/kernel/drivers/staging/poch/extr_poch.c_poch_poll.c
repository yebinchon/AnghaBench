
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {struct channel_info* private_data; } ;
struct channel_info {scalar_t__ dir; int wq; } ;
typedef int poll_table ;


 scalar_t__ CHANNEL_DIR_RX ;
 unsigned int POLLIN ;
 unsigned int POLLOUT ;
 unsigned int POLLRDNORM ;
 unsigned int POLLWRNORM ;
 scalar_t__ poch_channel_available (struct channel_info*) ;
 int poll_wait (struct file*,int *,int *) ;

__attribute__((used)) static unsigned int poch_poll(struct file *filp, poll_table *pt)
{
 struct channel_info *channel = filp->private_data;
 unsigned int ret = 0;

 poll_wait(filp, &channel->wq, pt);

 if (poch_channel_available(channel)) {
  if (channel->dir == CHANNEL_DIR_RX)
   ret = POLLIN | POLLRDNORM;
  else
   ret = POLLOUT | POLLWRNORM;
 }

 return ret;
}
