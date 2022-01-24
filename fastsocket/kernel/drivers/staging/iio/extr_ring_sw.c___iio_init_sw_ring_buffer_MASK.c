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
struct TYPE_2__ {int bpd; } ;
struct iio_sw_ring_buffer {scalar_t__ data; scalar_t__ half_p; scalar_t__ last_written_p; scalar_t__ write_p; scalar_t__ read_p; TYPE_1__ buf; int /*<<< orphan*/  use_lock; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int,int) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC3(struct iio_sw_ring_buffer *ring,
					    int bytes_per_datum, int length)
{
	if ((length == 0) || (bytes_per_datum == 0))
		return -EINVAL;

	FUNC1(&ring->buf, bytes_per_datum, length);
	ring->use_lock = FUNC0((ring)->use_lock);
	ring->data = FUNC2(length*ring->buf.bpd, GFP_KERNEL);
	ring->read_p = 0;
	ring->write_p = 0;
	ring->last_written_p = 0;
	ring->half_p = 0;
	return ring->data ? 0 : -ENOMEM;
}