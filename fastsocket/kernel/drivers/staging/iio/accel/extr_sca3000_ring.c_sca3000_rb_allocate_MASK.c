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
struct TYPE_3__ {int /*<<< orphan*/ * parent; int /*<<< orphan*/ * type; } ;
struct iio_ring_buffer {TYPE_1__ dev; } ;
struct iio_hw_ring_buffer {struct iio_ring_buffer buf; struct iio_dev* private; } ;
struct iio_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,void*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct iio_ring_buffer*,struct iio_dev*) ; 
 struct iio_hw_ring_buffer* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sca3000_ring_type ; 

__attribute__((used)) static struct iio_ring_buffer *FUNC4(struct iio_dev *indio_dev)
{
	struct iio_ring_buffer *buf;
	struct iio_hw_ring_buffer *ring;

	ring = FUNC3(sizeof *ring, GFP_KERNEL);
	if (!ring)
		return 0;
	ring->private = indio_dev;
	buf = &ring->buf;
	FUNC2(buf, indio_dev);
	buf->dev.type = &sca3000_ring_type;
	FUNC1(&buf->dev);
	buf->dev.parent = &indio_dev->dev;
	FUNC0(&buf->dev, (void *)buf);

	return buf;
}