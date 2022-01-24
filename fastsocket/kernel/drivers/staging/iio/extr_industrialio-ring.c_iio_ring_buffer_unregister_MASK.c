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
struct iio_ring_buffer {int /*<<< orphan*/  id; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iio_ring_buffer*) ; 
 int /*<<< orphan*/  FUNC1 (struct iio_ring_buffer*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  iio_ring_idr ; 

void FUNC4(struct iio_ring_buffer *ring)
{
	FUNC0(ring);
	FUNC1(ring);
	FUNC2(&ring->dev);
	FUNC3(&iio_ring_idr, ring->id);
}