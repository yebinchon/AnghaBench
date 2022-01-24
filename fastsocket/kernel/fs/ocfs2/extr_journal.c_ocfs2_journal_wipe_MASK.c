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
struct ocfs2_journal {int /*<<< orphan*/  j_osb; int /*<<< orphan*/  j_journal; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC6(struct ocfs2_journal *journal, int full)
{
	int status;

	FUNC2();

	FUNC0(!journal);

	status = FUNC1(journal->j_journal, full);
	if (status < 0) {
		FUNC3(status);
		goto bail;
	}

	status = FUNC5(journal->j_osb, 0, 0);
	if (status < 0)
		FUNC3(status);

bail:
	FUNC4(status);
	return status;
}