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
struct aio_ring_info {unsigned long nr; int /*<<< orphan*/  ring_lock; int /*<<< orphan*/ * ring_pages; } ;
struct kioctx {struct aio_ring_info ring_info; } ;
struct io_event {int dummy; } ;
struct aio_ring {unsigned long head; unsigned long tail; scalar_t__ nr; } ;

/* Variables and functions */
 int /*<<< orphan*/  KM_USER0 ; 
 int /*<<< orphan*/  KM_USER1 ; 
 struct io_event* FUNC0 (struct aio_ring_info*,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,unsigned long,unsigned long) ; 
 struct aio_ring* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct aio_ring*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct io_event*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct kioctx *ioctx, struct io_event *ent)
{
	struct aio_ring_info *info = &ioctx->ring_info;
	struct aio_ring *ring;
	unsigned long head;
	int ret = 0;

	ring = FUNC2(info->ring_pages[0], KM_USER0);
	FUNC1("in aio_read_evt h%lu t%lu m%lu\n",
		 (unsigned long)ring->head, (unsigned long)ring->tail,
		 (unsigned long)ring->nr);

	if (ring->head == ring->tail)
		goto out;

	FUNC6(&info->ring_lock);

	head = ring->head % info->nr;
	if (head != ring->tail) {
		struct io_event *evp = FUNC0(info, head, KM_USER1);
		*ent = *evp;
		head = (head + 1) % info->nr;
		FUNC5(); /* finish reading the event before updatng the head */
		ring->head = head;
		ret = 1;
		FUNC4(evp, KM_USER1);
	}
	FUNC7(&info->ring_lock);

out:
	FUNC3(ring, KM_USER0);
	FUNC1("leaving aio_read_evt: %d  h%lu t%lu\n", ret,
		 (unsigned long)ring->head, (unsigned long)ring->tail);
	return ret;
}