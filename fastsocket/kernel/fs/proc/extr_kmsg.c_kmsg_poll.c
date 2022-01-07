
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
typedef int poll_table ;


 unsigned int POLLIN ;
 unsigned int POLLRDNORM ;
 scalar_t__ do_syslog (int,int *,int ) ;
 int log_wait ;
 int poll_wait (struct file*,int *,int *) ;

__attribute__((used)) static unsigned int kmsg_poll(struct file *file, poll_table *wait)
{
 poll_wait(file, &log_wait, wait);
 if (do_syslog(9, ((void*)0), 0))
  return POLLIN | POLLRDNORM;
 return 0;
}
