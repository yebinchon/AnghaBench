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
typedef  int /*<<< orphan*/  u8 ;
struct iucv_path {size_t pathid; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ iucv_active_cpu ; 
 int /*<<< orphan*/  iucv_buffer_cpumask ; 
 int /*<<< orphan*/ ** iucv_path_table ; 
 int FUNC1 (size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  iucv_table_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(struct iucv_path *path, u8 userdata[16])
{
	int rc;

	FUNC3();
	if (FUNC0(iucv_buffer_cpumask)) {
		rc = -EIO;
		goto out;
	}
	if (iucv_active_cpu != FUNC5())
		FUNC6(&iucv_table_lock);
	rc = FUNC1(path->pathid, userdata);
	iucv_path_table[path->pathid] = NULL;
	FUNC2(&path->list);
	if (iucv_active_cpu != FUNC5())
		FUNC7(&iucv_table_lock);
out:
	FUNC4();
	return rc;
}