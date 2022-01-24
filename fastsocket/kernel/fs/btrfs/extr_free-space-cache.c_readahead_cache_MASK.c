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
struct inode {int /*<<< orphan*/  i_mapping; } ;
struct file_ra_state {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int PAGE_CACHE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (struct file_ra_state*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct file_ra_state*) ; 
 struct file_ra_state* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct file_ra_state*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct inode *inode)
{
	struct file_ra_state *ra;
	unsigned long last_index;

	ra = FUNC3(sizeof(*ra), GFP_NOFS);
	if (!ra)
		return -ENOMEM;

	FUNC0(ra, inode->i_mapping);
	last_index = (FUNC1(inode) - 1) >> PAGE_CACHE_SHIFT;

	FUNC4(inode->i_mapping, ra, NULL, 0, last_index);

	FUNC2(ra);

	return 0;
}