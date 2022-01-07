
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rc_pid_events_file_info {int dummy; } ;
struct inode {int dummy; } ;
struct file {struct rc_pid_events_file_info* private_data; } ;


 int kfree (struct rc_pid_events_file_info*) ;

__attribute__((used)) static int rate_control_pid_events_release(struct inode *inode,
        struct file *file)
{
 struct rc_pid_events_file_info *file_info = file->private_data;

 kfree(file_info);

 return 0;
}
