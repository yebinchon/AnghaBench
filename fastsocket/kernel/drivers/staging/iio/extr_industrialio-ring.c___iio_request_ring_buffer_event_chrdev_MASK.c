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
struct module {int dummy; } ;
struct TYPE_2__ {int id; int /*<<< orphan*/  _name; } ;
struct iio_ring_buffer {TYPE_1__ ev_int; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  iio_ring_event_idr ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,struct module*,struct device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,char*,int) ; 

__attribute__((used)) static inline int
FUNC4(struct iio_ring_buffer *buf,
				       int id,
				       struct module *owner,
				       struct device *dev)
{
	int ret;
	ret = FUNC1(&iio_ring_event_idr);
	if (ret < 0)
		goto error_ret;
	else
		buf->ev_int.id = ret;

	FUNC3(buf->ev_int._name, 20,
		 "ring_event_line%d",
		 buf->ev_int.id);
	ret = FUNC2(&(buf->ev_int),
			       buf->ev_int._name,
			       owner,
			       dev);
	if (ret)
		goto error_free_id;
	return 0;

error_free_id:
	FUNC0(&iio_ring_event_idr, buf->ev_int.id);
error_ret:
	return ret;
}