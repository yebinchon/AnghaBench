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
struct ring_buffer {int /*<<< orphan*/  refcount; } ;
struct perf_event {int /*<<< orphan*/  rb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct ring_buffer* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static struct ring_buffer *FUNC4(struct perf_event *event)
{
	struct ring_buffer *rb;

	FUNC2();
	rb = FUNC1(event->rb);
	if (rb) {
		if (!FUNC0(&rb->refcount))
			rb = NULL;
	}
	FUNC3();

	return rb;
}