#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  bpd; } ;
struct iio_sw_ring_buffer {unsigned char* last_written_p; TYPE_1__ buf; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,unsigned char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 

int FUNC5(struct iio_sw_ring_buffer *ring,
			       unsigned char *data)
{
	unsigned char *last_written_p_copy;

	FUNC1(&ring->buf);
again:
	FUNC0();
	last_written_p_copy = ring->last_written_p;
	FUNC0(); /*unnessecary? */
	/* Check there is anything here */
	if (last_written_p_copy == 0)
		return -EAGAIN;
	FUNC3(data, last_written_p_copy, ring->buf.bpd);

	if (FUNC4(ring->last_written_p >= last_written_p_copy))
		goto again;

	FUNC2(&ring->buf);
	return 0;
}