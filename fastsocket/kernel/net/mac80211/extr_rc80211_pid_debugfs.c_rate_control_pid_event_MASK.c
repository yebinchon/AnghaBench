#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  union rc_pid_event_data {int dummy; } rc_pid_event_data ;
struct rc_pid_event_buffer {size_t next_entry; int /*<<< orphan*/  waitqueue; int /*<<< orphan*/  lock; int /*<<< orphan*/  ev_count; struct rc_pid_event* ring; } ;
struct rc_pid_event {int type; union rc_pid_event_data data; scalar_t__ id; int /*<<< orphan*/  timestamp; } ;
typedef  enum rc_pid_event_type { ____Placeholder_rc_pid_event_type } rc_pid_event_type ;

/* Variables and functions */
 int RC_PID_EVENT_RING_SIZE ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct rc_pid_event_buffer *buf,
				   enum rc_pid_event_type type,
				   union rc_pid_event_data *data)
{
	struct rc_pid_event *ev;
	unsigned long status;

	FUNC0(&buf->lock, status);
	ev = &(buf->ring[buf->next_entry]);
	buf->next_entry = (buf->next_entry + 1) % RC_PID_EVENT_RING_SIZE;

	ev->timestamp = jiffies;
	ev->id = buf->ev_count++;
	ev->type = type;
	ev->data = *data;

	FUNC1(&buf->lock, status);

	FUNC2(&buf->waitqueue);
}