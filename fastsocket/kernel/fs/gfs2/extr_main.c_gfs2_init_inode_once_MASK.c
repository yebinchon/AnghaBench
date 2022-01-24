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
struct gfs2_inode {int /*<<< orphan*/ * i_hash_cache; int /*<<< orphan*/ * i_res; int /*<<< orphan*/  i_trunc_list; int /*<<< orphan*/  i_rw_mutex; int /*<<< orphan*/  i_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(void *foo)
{
	struct gfs2_inode *ip = foo;

	FUNC2(&ip->i_inode);
	FUNC1(&ip->i_rw_mutex);
	FUNC0(&ip->i_trunc_list);
	ip->i_res = NULL;
	ip->i_hash_cache = NULL;
}