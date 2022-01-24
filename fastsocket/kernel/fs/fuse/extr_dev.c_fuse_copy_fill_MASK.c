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
struct fuse_copy_state {unsigned long addr; int /*<<< orphan*/  req; int /*<<< orphan*/  fc; scalar_t__ len; scalar_t__ seglen; scalar_t__ mapaddr; scalar_t__ buf; int /*<<< orphan*/  pg; int /*<<< orphan*/  write; int /*<<< orphan*/  nr_segs; TYPE_1__* iov; } ;
struct TYPE_2__ {scalar_t__ iov_base; scalar_t__ iov_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  KM_USER0 ; 
 unsigned long PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct fuse_copy_state*) ; 
 int FUNC2 (unsigned long,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (unsigned long,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct fuse_copy_state *cs)
{
	unsigned long offset;
	int err;

	FUNC6(cs->fc, cs->req);
	FUNC1(cs);
	if (!cs->seglen) {
		FUNC0(!cs->nr_segs);
		cs->seglen = cs->iov[0].iov_len;
		cs->addr = (unsigned long) cs->iov[0].iov_base;
		cs->iov++;
		cs->nr_segs--;
	}
	err = FUNC2(cs->addr, 1, cs->write, &cs->pg);
	if (err < 0)
		return err;
	FUNC0(err != 1);
	offset = cs->addr % PAGE_SIZE;
	cs->mapaddr = FUNC3(cs->pg, KM_USER0);
	cs->buf = cs->mapaddr + offset;
	cs->len = FUNC5(PAGE_SIZE - offset, cs->seglen);
	cs->seglen -= cs->len;
	cs->addr += cs->len;

	return FUNC4(cs->fc, cs->req);
}