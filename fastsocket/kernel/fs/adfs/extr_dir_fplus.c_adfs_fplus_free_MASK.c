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
struct adfs_dir {int nr_buffers; int /*<<< orphan*/ * sb; int /*<<< orphan*/ * bh; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1(struct adfs_dir *dir)
{
	int i;

	for (i = 0; i < dir->nr_buffers; i++)
		FUNC0(dir->bh[i]);
	dir->sb = NULL;
}