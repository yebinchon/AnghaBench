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
struct ring_buffer_event {scalar_t__ type_len; int /*<<< orphan*/ * array; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ RINGBUF_TYPE_DATA_TYPE_LEN_MAX ; 

__attribute__((used)) static void *
FUNC1(struct ring_buffer_event *event)
{
	FUNC0(event->type_len > RINGBUF_TYPE_DATA_TYPE_LEN_MAX);
	/* If length is in len field, then array[0] has the data */
	if (event->type_len)
		return (void *)&event->array[0];
	/* Otherwise length is in array[0] and array[1] has the data */
	return (void *)&event->array[1];
}