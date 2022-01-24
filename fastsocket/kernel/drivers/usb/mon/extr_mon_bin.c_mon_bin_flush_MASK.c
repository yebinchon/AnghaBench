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
struct mon_reader_bin {int /*<<< orphan*/  fetch_lock; scalar_t__ b_read; int /*<<< orphan*/  b_lock; int /*<<< orphan*/  b_out; } ;
struct mon_bin_hdr {scalar_t__ len_cap; } ;

/* Variables and functions */
 struct mon_bin_hdr* FUNC0 (struct mon_reader_bin*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct mon_reader_bin*) ; 
 scalar_t__ PKT_SIZE ; 
 int /*<<< orphan*/  FUNC2 (struct mon_reader_bin*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC7(struct mon_reader_bin *rp, unsigned nevents)
{
	unsigned long flags;
	struct mon_bin_hdr *ep;
	int i;

	FUNC3(&rp->fetch_lock);
	FUNC5(&rp->b_lock, flags);
	for (i = 0; i < nevents; ++i) {
		if (FUNC1(rp))
			break;

		ep = FUNC0(rp, rp->b_out);
		FUNC2(rp, PKT_SIZE + ep->len_cap);
	}
	FUNC6(&rp->b_lock, flags);
	rp->b_read = 0;
	FUNC4(&rp->fetch_lock);
	return i;
}