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
struct TYPE_3__ {int /*<<< orphan*/ * class; int /*<<< orphan*/ * parent; int /*<<< orphan*/ * type; } ;
struct iio_ring_buffer {TYPE_1__ dev; } ;
struct iio_sw_ring_buffer {struct iio_ring_buffer buf; } ;
struct iio_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,void*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  iio_class ; 
 int /*<<< orphan*/  FUNC2 (struct iio_ring_buffer*,struct iio_dev*) ; 
 int /*<<< orphan*/  iio_sw_ring_type ; 
 struct iio_sw_ring_buffer* FUNC3 (int,int /*<<< orphan*/ ) ; 

struct iio_ring_buffer *FUNC4(struct iio_dev *indio_dev)
{
	struct iio_ring_buffer *buf;
	struct iio_sw_ring_buffer *ring;

	ring = FUNC3(sizeof *ring, GFP_KERNEL);
	if (!ring)
		return 0;
	buf = &ring->buf;

	FUNC2(buf, indio_dev);
	buf->dev.type = &iio_sw_ring_type;
	FUNC1(&buf->dev);
	buf->dev.parent = &indio_dev->dev;
	buf->dev.class = &iio_class;
	FUNC0(&buf->dev, (void *)buf);

	return buf;
}