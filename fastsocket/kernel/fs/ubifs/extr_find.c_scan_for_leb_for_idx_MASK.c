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
typedef  int /*<<< orphan*/  ubifs_lpt_scan_callback ;
typedef  struct ubifs_lprops {int lnum; scalar_t__ free; scalar_t__ dirty; int flags; } const ubifs_lprops ;
struct ubifs_info {int lscan_lnum; int main_first; int leb_cnt; scalar_t__ leb_size; } ;
struct scan_data {int lnum; } ;

/* Variables and functions */
 struct ubifs_lprops const* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct ubifs_lprops const*) ; 
 int LPROPS_INDEX ; 
 int LPROPS_TAKEN ; 
 scalar_t__ scan_for_idx_cb ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct ubifs_lprops const* FUNC3 (struct ubifs_info*,int) ; 
 int FUNC4 (struct ubifs_info*,int,int,int /*<<< orphan*/ ,struct scan_data*) ; 

__attribute__((used)) static const struct ubifs_lprops *FUNC5(struct ubifs_info *c)
{
	struct ubifs_lprops *lprops;
	struct scan_data data;
	int err;

	data.lnum = -1;
	err = FUNC4(c, -1, c->lscan_lnum,
				    (ubifs_lpt_scan_callback)scan_for_idx_cb,
				    &data);
	if (err)
		return FUNC0(err);
	FUNC2(data.lnum >= c->main_first && data.lnum < c->leb_cnt);
	c->lscan_lnum = data.lnum;
	lprops = FUNC3(c, data.lnum);
	if (FUNC1(lprops))
		return lprops;
	FUNC2(lprops->lnum == data.lnum);
	FUNC2(lprops->free + lprops->dirty == c->leb_size);
	FUNC2(!(lprops->flags & LPROPS_TAKEN));
	FUNC2(!(lprops->flags & LPROPS_INDEX));
	return lprops;
}