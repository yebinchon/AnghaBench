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
struct ring_buffer {long watermark; int writable; int /*<<< orphan*/  event_lock; int /*<<< orphan*/  event_list; int /*<<< orphan*/  refcount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int RING_BUFFER_WRITABLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 long FUNC2 (long,long) ; 
 long FUNC3 (struct ring_buffer*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(struct ring_buffer *rb, long watermark, int flags)
{
	long max_size = FUNC3(rb);

	if (watermark)
		rb->watermark = FUNC2(max_size, watermark);

	if (!rb->watermark)
		rb->watermark = max_size / 2;

	if (flags & RING_BUFFER_WRITABLE)
		rb->writable = 1;

	FUNC1(&rb->refcount, 1);

	FUNC0(&rb->event_list);
	FUNC4(&rb->event_lock);
}