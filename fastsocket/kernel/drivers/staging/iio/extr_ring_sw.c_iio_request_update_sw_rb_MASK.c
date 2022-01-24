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
struct TYPE_2__ {int /*<<< orphan*/  length; int /*<<< orphan*/  bpd; } ;
struct iio_sw_ring_buffer {int /*<<< orphan*/  use_lock; TYPE_1__ buf; scalar_t__ use_count; int /*<<< orphan*/  update_needed; } ;
struct iio_ring_buffer {int dummy; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  FUNC0 (struct iio_sw_ring_buffer*) ; 
 int FUNC1 (struct iio_sw_ring_buffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct iio_sw_ring_buffer* FUNC2 (struct iio_ring_buffer*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct iio_ring_buffer *r)
{
	int ret = 0;
	struct iio_sw_ring_buffer *ring = FUNC2(r);

	FUNC3(&ring->use_lock);
	if (!ring->update_needed)
		goto error_ret;
	if (ring->use_count) {
		ret = -EAGAIN;
		goto error_ret;
	}
	FUNC0(ring);
	ret = FUNC1(ring, ring->buf.bpd, ring->buf.length);
error_ret:
	FUNC4(&ring->use_lock);
	return ret;
}