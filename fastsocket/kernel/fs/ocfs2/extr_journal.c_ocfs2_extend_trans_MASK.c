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
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

int FUNC7(handle_t *handle, int nblocks)
{
	int status;

	FUNC0(!handle);
	FUNC0(!nblocks);

	FUNC4();

	FUNC3(0, "Trying to extend transaction by %d blocks\n", nblocks);

#ifdef CONFIG_OCFS2_DEBUG_FS
	status = 1;
#else
	status = FUNC1(handle, nblocks);
	if (status < 0) {
		FUNC5(status);
		goto bail;
	}
#endif

	if (status > 0) {
		FUNC3(0,
		     "jbd2_journal_extend failed, trying "
		     "jbd2_journal_restart\n");
		status = FUNC2(handle, nblocks);
		if (status < 0) {
			FUNC5(status);
			goto bail;
		}
	}

	status = 0;
bail:

	FUNC6(status);
	return status;
}