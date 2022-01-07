
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union rc_pid_event_data {int dummy; } rc_pid_event_data ;
struct rc_pid_event_buffer {size_t next_entry; int waitqueue; int lock; int ev_count; struct rc_pid_event* ring; } ;
struct rc_pid_event {int type; union rc_pid_event_data data; scalar_t__ id; int timestamp; } ;
typedef enum rc_pid_event_type { ____Placeholder_rc_pid_event_type } rc_pid_event_type ;


 int RC_PID_EVENT_RING_SIZE ;
 int jiffies ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up_all (int *) ;

__attribute__((used)) static void rate_control_pid_event(struct rc_pid_event_buffer *buf,
       enum rc_pid_event_type type,
       union rc_pid_event_data *data)
{
 struct rc_pid_event *ev;
 unsigned long status;

 spin_lock_irqsave(&buf->lock, status);
 ev = &(buf->ring[buf->next_entry]);
 buf->next_entry = (buf->next_entry + 1) % RC_PID_EVENT_RING_SIZE;

 ev->timestamp = jiffies;
 ev->id = buf->ev_count++;
 ev->type = type;
 ev->data = *data;

 spin_unlock_irqrestore(&buf->lock, status);

 wake_up_all(&buf->waitqueue);
}
