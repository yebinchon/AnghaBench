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
struct mon_reader_bin {unsigned int b_cnt; unsigned int b_out; unsigned int b_size; int /*<<< orphan*/  fetch_lock; int /*<<< orphan*/  b_lock; } ;
struct mon_bin_hdr {unsigned int len_cap; } ;

/* Variables and functions */
 struct mon_bin_hdr* FUNC0 (struct mon_reader_bin*,unsigned int) ; 
 unsigned int PKT_ALIGN ; 
 unsigned int PKT_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct mon_reader_bin *rp)
{
	unsigned int cur_out;
	unsigned int bytes, avail;
	unsigned int size;
	unsigned int nevents;
	struct mon_bin_hdr *ep;
	unsigned long flags;

	FUNC1(&rp->fetch_lock);

	FUNC3(&rp->b_lock, flags);
	avail = rp->b_cnt;
	FUNC4(&rp->b_lock, flags);

	cur_out = rp->b_out;
	nevents = 0;
	bytes = 0;
	while (bytes < avail) {
		ep = FUNC0(rp, cur_out);

		nevents++;
		size = ep->len_cap + PKT_SIZE;
		size = (size + PKT_ALIGN-1) & ~(PKT_ALIGN-1);
		if ((cur_out += size) >= rp->b_size)
			cur_out -= rp->b_size;
		bytes += size;
	}

	FUNC2(&rp->fetch_lock);
	return nevents;
}