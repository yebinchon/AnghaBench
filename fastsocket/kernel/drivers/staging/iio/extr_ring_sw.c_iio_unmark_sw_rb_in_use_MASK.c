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
struct iio_sw_ring_buffer {int /*<<< orphan*/  use_lock; int /*<<< orphan*/  use_count; } ;
struct iio_ring_buffer {int dummy; } ;

/* Variables and functions */
 struct iio_sw_ring_buffer* FUNC0 (struct iio_ring_buffer*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct iio_ring_buffer *r)
{
	struct iio_sw_ring_buffer *ring = FUNC0(r);
	FUNC1(&ring->use_lock);
	ring->use_count--;
	FUNC2(&ring->use_lock);
}