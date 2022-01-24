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
struct ring_buffer {int /*<<< orphan*/  writable; } ;

/* Variables and functions */
 int FUNC0 (struct ring_buffer*) ; 

__attribute__((used)) static bool FUNC1(struct ring_buffer *rb, unsigned long tail,
			      unsigned long offset, unsigned long head)
{
	unsigned long mask;

	if (!rb->writable)
		return true;

	mask = FUNC0(rb) - 1;

	offset = (offset - tail) & mask;
	head   = (head   - tail) & mask;

	if ((int)(head - offset) < 0)
		return false;

	return true;
}