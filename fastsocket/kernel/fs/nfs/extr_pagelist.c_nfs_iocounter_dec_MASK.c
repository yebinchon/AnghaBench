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
struct nfs_io_counter {int /*<<< orphan*/  flags; int /*<<< orphan*/  io_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFS_IO_INPROGRESS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct nfs_io_counter *c)
{
	if (FUNC0(&c->io_count)) {
		FUNC1(NFS_IO_INPROGRESS, &c->flags);
		FUNC2();
		FUNC3(&c->flags, NFS_IO_INPROGRESS);
	}
}