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
struct syscall_trace_exit {int nr; int /*<<< orphan*/  ret; } ;
struct syscall_metadata {int /*<<< orphan*/  exit_event; int /*<<< orphan*/  exit_id; } ;
struct ring_buffer_event {int dummy; } ;
struct ring_buffer {int dummy; } ;
struct pt_regs {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  enabled_exit_syscalls ; 
 int /*<<< orphan*/  FUNC0 (struct ring_buffer*,int /*<<< orphan*/ ,struct syscall_trace_exit*,struct ring_buffer_event*) ; 
 struct syscall_trace_exit* FUNC1 (struct ring_buffer_event*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct pt_regs*) ; 
 struct syscall_metadata* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 struct ring_buffer_event* FUNC5 (struct ring_buffer**,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ring_buffer*,struct ring_buffer_event*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,struct pt_regs*) ; 

void FUNC8(struct pt_regs *regs, long ret)
{
	struct syscall_trace_exit *entry;
	struct syscall_metadata *sys_data;
	struct ring_buffer_event *event;
	struct ring_buffer *buffer;
	int syscall_nr;

	syscall_nr = FUNC7(current, regs);
	if (syscall_nr < 0)
		return;
	if (!FUNC4(syscall_nr, enabled_exit_syscalls))
		return;

	sys_data = FUNC3(syscall_nr);
	if (!sys_data)
		return;

	event = FUNC5(&buffer, sys_data->exit_id,
				sizeof(*entry), 0, 0);
	if (!event)
		return;

	entry = FUNC1(event);
	entry->nr = syscall_nr;
	entry->ret = FUNC2(current, regs);

	if (!FUNC0(buffer, sys_data->exit_event,
					  entry, event))
		FUNC6(buffer, event, 0, 0);
}