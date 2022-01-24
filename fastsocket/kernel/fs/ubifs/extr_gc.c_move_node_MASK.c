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
struct ubifs_wbuf {int lnum; int offs; int used; } ;
struct ubifs_scan_node {int /*<<< orphan*/  list; int /*<<< orphan*/  len; int /*<<< orphan*/  offs; int /*<<< orphan*/  key; int /*<<< orphan*/  node; } ;
struct ubifs_scan_leb {int /*<<< orphan*/  lnum; } ;
struct ubifs_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct ubifs_scan_node*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct ubifs_info*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct ubifs_wbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct ubifs_info *c, struct ubifs_scan_leb *sleb,
		     struct ubifs_scan_node *snod, struct ubifs_wbuf *wbuf)
{
	int err, new_lnum = wbuf->lnum, new_offs = wbuf->offs + wbuf->used;

	FUNC0();
	err = FUNC4(wbuf, snod->node, snod->len);
	if (err)
		return err;

	err = FUNC3(c, &snod->key, sleb->lnum,
				snod->offs, new_lnum, new_offs,
				snod->len);
	FUNC2(&snod->list);
	FUNC1(snod);
	return err;
}