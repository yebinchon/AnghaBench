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
typedef  scalar_t__ u64 ;
struct vhost_virtqueue {scalar_t__ log_ctx; int /*<<< orphan*/  log_base; } ;
struct vhost_log {int /*<<< orphan*/  addr; int /*<<< orphan*/  len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 () ; 

int FUNC5(struct vhost_virtqueue *vq, struct vhost_log *log,
		    unsigned int log_num, u64 len)
{
	int i, r;

	/* Make sure data written is seen before log. */
	FUNC4();
	for (i = 0; i < log_num; ++i) {
		u64 l = FUNC3(log[i].len, len);
		r = FUNC2(vq->log_base, log[i].addr, l);
		if (r < 0)
			return r;
		len -= l;
		if (!len) {
			if (vq->log_ctx)
				FUNC1(vq->log_ctx, 1);
			return 0;
		}
	}
	/* Length written exceeds what we have stored. This is a bug. */
	FUNC0();
	return 0;
}