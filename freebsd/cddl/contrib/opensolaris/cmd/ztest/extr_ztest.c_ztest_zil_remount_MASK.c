#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ zd_zilog; int /*<<< orphan*/  zd_dirobj_lock; int /*<<< orphan*/  zd_zilog_lock; int /*<<< orphan*/ * zd_os; } ;
typedef  TYPE_1__ ztest_ds_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  objset_t ;

/* Variables and functions */
 int /*<<< orphan*/  RW_WRITER ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ztest_get_data ; 
 int /*<<< orphan*/  ztest_replay_vector ; 

void
FUNC8(ztest_ds_t *zd, uint64_t id)
{
	objset_t *os = zd->zd_os;

	/*
	 * We grab the zd_dirobj_lock to ensure that no other thread is
	 * updating the zil (i.e. adding in-memory log records) and the
	 * zd_zilog_lock to block any I/O.
	 */
	FUNC1(&zd->zd_dirobj_lock);
	FUNC3(&zd->zd_zilog_lock, RW_WRITER);

	/* zfsvfs_teardown() */
	FUNC5(zd->zd_zilog);

	/* zfsvfs_setup() */
	FUNC0(FUNC6(os, ztest_get_data) == zd->zd_zilog);
	FUNC7(os, zd, ztest_replay_vector);

	FUNC4(&zd->zd_zilog_lock);
	FUNC2(&zd->zd_dirobj_lock);
}