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
struct inode {int /*<<< orphan*/  i_mapping; int /*<<< orphan*/  i_sb; } ;
struct bmap {int dummy; } ;
struct TYPE_2__ {struct bmap* bmap; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct bmap*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC5(struct inode *ipbmap, int mounterror)
{
	struct bmap *bmp = FUNC0(ipbmap->i_sb)->bmap;

	if (!(mounterror || FUNC2(ipbmap)))
		FUNC1(ipbmap);

	/*
	 * Invalidate the page cache buffers
	 */
	FUNC4(ipbmap->i_mapping, 0);

	/* free the memory for the in-memory bmap. */
	FUNC3(bmp);

	return (0);
}