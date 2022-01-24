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
struct treepath {int pos_in_item; } ;
struct item_head {int dummy; } ;
struct buffer_head {int b_blocknr; } ;
struct TYPE_3__ {int search_start; int /*<<< orphan*/  formatted_node; struct treepath* path; } ;
typedef  TYPE_1__ reiserfs_blocknr_hint_t ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int FUNC0 (struct item_head*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 struct item_head* FUNC3 (struct treepath*) ; 
 int /*<<< orphan*/ * FUNC4 (struct treepath*) ; 
 struct buffer_head* FUNC5 (struct treepath*) ; 
 scalar_t__ FUNC6 (struct item_head*) ; 

__attribute__((used)) static int FUNC7(reiserfs_blocknr_hint_t * hint)
{
	struct treepath *path;
	struct buffer_head *bh;
	struct item_head *ih;
	int pos_in_item;
	__le32 *item;
	int ret = 0;

	if (!hint->path)	/* reiserfs code can call this function w/o pointer to path
				 * structure supplied; then we rely on supplied search_start */
		return 0;

	path = hint->path;
	bh = FUNC5(path);
	FUNC1(!bh, "green-4002: Illegal path specified to get_left_neighbor");
	ih = FUNC3(path);
	pos_in_item = path->pos_in_item;
	item = FUNC4(path);

	hint->search_start = bh->b_blocknr;

	if (!hint->formatted_node && FUNC6(ih)) {
		/* for indirect item: go to left and look for the first non-hole entry
		   in the indirect item */
		if (pos_in_item == FUNC0(ih))
			pos_in_item--;
//          pos_in_item = I_UNFM_NUM (ih) - 1;
		while (pos_in_item >= 0) {
			int t = FUNC2(item, pos_in_item);
			if (t) {
				hint->search_start = t;
				ret = 1;
				break;
			}
			pos_in_item--;
		}
	}

	/* does result value fit into specified region? */
	return ret;
}