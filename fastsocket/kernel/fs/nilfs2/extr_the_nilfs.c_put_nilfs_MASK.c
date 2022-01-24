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
struct the_nilfs {int /*<<< orphan*/ * ns_sbh; int /*<<< orphan*/  ns_gc_dat; int /*<<< orphan*/  ns_dat; int /*<<< orphan*/  ns_cpfile; int /*<<< orphan*/  ns_sufile; int /*<<< orphan*/  ns_list; int /*<<< orphan*/  ns_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct the_nilfs*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct the_nilfs*) ; 
 scalar_t__ FUNC6 (struct the_nilfs*) ; 
 scalar_t__ FUNC7 (struct the_nilfs*) ; 
 int /*<<< orphan*/  nilfs_lock ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

void FUNC12(struct the_nilfs *nilfs)
{
	FUNC10(&nilfs_lock);
	if (!FUNC0(&nilfs->ns_count)) {
		FUNC11(&nilfs_lock);
		return;
	}
	FUNC3(&nilfs->ns_list);
	FUNC11(&nilfs_lock);

	/*
	 * Increment of ns_count never occurs below because the caller
	 * of get_nilfs() holds at least one reference to the_nilfs.
	 * Thus its exclusion control is not required here.
	 */

	FUNC4();
	if (FUNC7(nilfs)) {
		FUNC8(nilfs->ns_sufile);
		FUNC9(nilfs->ns_sufile);
		FUNC8(nilfs->ns_cpfile);
		FUNC9(nilfs->ns_cpfile);
		FUNC8(nilfs->ns_dat);
		FUNC9(nilfs->ns_dat);
		/* XXX: how and when to clear nilfs->ns_gc_dat? */
		FUNC9(nilfs->ns_gc_dat);
	}
	if (FUNC6(nilfs)) {
		FUNC5(nilfs);
		FUNC1(nilfs->ns_sbh[0]);
		FUNC1(nilfs->ns_sbh[1]);
	}
	FUNC2(nilfs);
}