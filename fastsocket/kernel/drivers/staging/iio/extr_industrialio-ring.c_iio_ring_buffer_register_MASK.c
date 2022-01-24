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
struct iio_ring_buffer {int id; int /*<<< orphan*/  dev; int /*<<< orphan*/  owner; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iio_ring_buffer*) ; 
 int FUNC1 (struct iio_ring_buffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct iio_ring_buffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  iio_ring_idr ; 

int FUNC8(struct iio_ring_buffer *ring)
{
	int ret;
	ret = FUNC7(&iio_ring_idr);
	if (ret < 0)
		goto error_ret;
	else
		ring->id = ret;

	FUNC3(&ring->dev, "ring_buffer%d", ring->id);
	ret = FUNC4(&ring->dev);
	if (ret)
		goto error_free_id;

	ret = FUNC2(ring,
						     0,
						     ring->owner,
						     &ring->dev);
	if (ret)
		goto error_remove_device;

	ret = FUNC1(ring,
						      0,
						      ring->owner);

	if (ret)
		goto error_free_ring_buffer_event_chrdev;

	return ret;
error_free_ring_buffer_event_chrdev:
	FUNC0(ring);
error_remove_device:
	FUNC5(&ring->dev);
error_free_id:
	FUNC6(&iio_ring_idr, ring->id);
error_ret:
	return ret;
}