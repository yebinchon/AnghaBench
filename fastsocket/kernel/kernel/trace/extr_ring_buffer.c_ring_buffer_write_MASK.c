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
struct ring_buffer_per_cpu {int /*<<< orphan*/  record_disabled; } ;
struct ring_buffer_event {int dummy; } ;
struct ring_buffer {struct ring_buffer_per_cpu** buffers; int /*<<< orphan*/  cpumask; int /*<<< orphan*/  record_disabled; } ;

/* Variables and functions */
 unsigned long BUF_MAX_DATA_SIZE ; 
 int EBUSY ; 
 scalar_t__ RB_BUFFERS_ON ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (void*,void*,unsigned long) ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct ring_buffer_per_cpu*,struct ring_buffer_event*) ; 
 void* FUNC7 (struct ring_buffer_event*) ; 
 struct ring_buffer_event* FUNC8 (struct ring_buffer*,struct ring_buffer_per_cpu*,unsigned long) ; 
 scalar_t__ ring_buffer_flags ; 

int FUNC9(struct ring_buffer *buffer,
			unsigned long length,
			void *data)
{
	struct ring_buffer_per_cpu *cpu_buffer;
	struct ring_buffer_event *event;
	void *body;
	int ret = -EBUSY;
	int cpu, resched;

	if (ring_buffer_flags != RB_BUFFERS_ON)
		return -EBUSY;

	resched = FUNC2();

	if (FUNC0(&buffer->record_disabled))
		goto out;

	cpu = FUNC5();

	if (!FUNC1(cpu, buffer->cpumask))
		goto out;

	cpu_buffer = buffer->buffers[cpu];

	if (FUNC0(&cpu_buffer->record_disabled))
		goto out;

	if (length > BUF_MAX_DATA_SIZE)
		goto out;

	event = FUNC8(buffer, cpu_buffer, length);
	if (!event)
		goto out;

	body = FUNC7(event);

	FUNC4(body, data, length);

	FUNC6(cpu_buffer, event);

	ret = 0;
 out:
	FUNC3(resched);

	return ret;
}