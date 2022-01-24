#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ ev_p; } ;
struct iio_ring_buffer {TYPE_1__ shared_ev_pointer; } ;
typedef  int /*<<< orphan*/  s64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct iio_ring_buffer*,int,int /*<<< orphan*/ ) ; 

int FUNC2(struct iio_ring_buffer *ring_buf,
				    int event_code,
				    s64 timestamp)
{
	if (ring_buf->shared_ev_pointer.ev_p)
		FUNC0(ring_buf->shared_ev_pointer.ev_p,
				   event_code,
				   timestamp);
	else
		return FUNC1(ring_buf,
					  event_code,
					  timestamp);
	return 0;
}