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
struct ring_buffer_event {int dummy; } ;
struct ring_buffer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ring_buffer*,unsigned long,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ring_buffer*,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ring_buffer*,struct ring_buffer_event*) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static inline void
FUNC4(struct ring_buffer *buffer,
			     struct ring_buffer_event *event,
			     unsigned long flags, int pc,
			     int wake)
{
	FUNC2(buffer, event);

	FUNC0(buffer, flags, 6, pc);
	FUNC1(buffer, flags, pc);

	if (wake)
		FUNC3();
}