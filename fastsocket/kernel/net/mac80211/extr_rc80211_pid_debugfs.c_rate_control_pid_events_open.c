
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rc_pid_event_buffer {int lock; int next_entry; } ;
struct rc_pid_sta_info {struct rc_pid_event_buffer events; } ;
struct rc_pid_events_file_info {struct rc_pid_event_buffer* events; int next_entry; } ;
struct inode {struct rc_pid_sta_info* i_private; } ;
struct file {struct rc_pid_events_file_info* private_data; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct rc_pid_events_file_info* kmalloc (int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int rate_control_pid_events_open(struct inode *inode, struct file *file)
{
 struct rc_pid_sta_info *sinfo = inode->i_private;
 struct rc_pid_event_buffer *events = &sinfo->events;
 struct rc_pid_events_file_info *file_info;
 unsigned long status;


 file_info = kmalloc(sizeof(*file_info), GFP_KERNEL);
 if (file_info == ((void*)0))
  return -ENOMEM;

 spin_lock_irqsave(&events->lock, status);

 file_info->next_entry = events->next_entry;
 file_info->events = events;

 spin_unlock_irqrestore(&events->lock, status);

 file->private_data = file_info;

 return 0;
}
