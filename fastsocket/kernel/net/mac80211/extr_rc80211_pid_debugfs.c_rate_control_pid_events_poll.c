
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rc_pid_events_file_info {TYPE_1__* events; } ;
struct file {struct rc_pid_events_file_info* private_data; } ;
typedef int poll_table ;
struct TYPE_2__ {int waitqueue; } ;


 unsigned int POLLIN ;
 unsigned int POLLRDNORM ;
 int poll_wait (struct file*,int *,int *) ;

__attribute__((used)) static unsigned int rate_control_pid_events_poll(struct file *file,
       poll_table *wait)
{
 struct rc_pid_events_file_info *file_info = file->private_data;

 poll_wait(file, &file_info->events->waitqueue, wait);

 return POLLIN | POLLRDNORM;
}
