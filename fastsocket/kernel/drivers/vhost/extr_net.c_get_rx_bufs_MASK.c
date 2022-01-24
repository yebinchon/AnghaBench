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
struct vring_used_elem {unsigned int id; scalar_t__ len; } ;
struct vhost_virtqueue {unsigned int num; scalar_t__ iov; int /*<<< orphan*/  dev; } ;
struct vhost_log {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int EINVAL ; 
 int ENOBUFS ; 
 int UIO_MAXIOV ; 
 scalar_t__ FUNC1 (scalar_t__,unsigned int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct vhost_virtqueue*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct vhost_virtqueue*,scalar_t__,scalar_t__,unsigned int*,unsigned int*,struct vhost_log*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC5 (struct vhost_virtqueue*,char*,unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC6(struct vhost_virtqueue *vq,
		       struct vring_used_elem *heads,
		       int datalen,
		       unsigned *iovcount,
		       struct vhost_log *log,
		       unsigned *log_num,
		       unsigned int quota)
{
	unsigned int out, in;
	int seg = 0;
	int headcount = 0;
	unsigned d;
	int r, nlogs = 0;

	while (datalen > 0 && headcount < quota) {
		if (FUNC2(seg >= UIO_MAXIOV)) {
			r = -ENOBUFS;
			goto err;
		}
		r = FUNC4(vq->dev, vq, vq->iov + seg,
				      FUNC0(vq->iov) - seg, &out,
				      &in, log, log_num);
		if (FUNC2(r < 0))
			goto err;

		d = r;
		if (d == vq->num) {
			r = 0;
			goto err;
		}
		if (FUNC2(out || in <= 0)) {
			FUNC5(vq, "unexpected descriptor format for RX: "
				"out %d, in %d\n", out, in);
			r = -EINVAL;
			goto err;
		}
		if (FUNC2(log)) {
			nlogs += *log_num;
			log += *log_num;
		}
		heads[headcount].id = d;
		heads[headcount].len = FUNC1(vq->iov + seg, in);
		datalen -= heads[headcount].len;
		++headcount;
		seg += in;
	}
	heads[headcount - 1].len += datalen;
	*iovcount = seg;
	if (FUNC2(log))
		*log_num = nlogs;

	/* Detect overrun */
	if (FUNC2(datalen > 0)) {
		r = UIO_MAXIOV + 1;
		goto err;
	}
	return headcount;
err:
	FUNC3(vq, headcount);
	return r;
}