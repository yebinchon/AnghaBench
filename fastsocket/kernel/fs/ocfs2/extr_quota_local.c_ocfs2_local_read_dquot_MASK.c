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
struct dquot {int /*<<< orphan*/  dq_type; int /*<<< orphan*/  dq_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct dquot*) ; 
 int FUNC4 (struct dquot*) ; 

__attribute__((used)) static int FUNC5(struct dquot *dquot)
{
	int status;

	FUNC0("id=%u, type=%d\n", dquot->dq_id, dquot->dq_type);

	status = FUNC4(dquot);
	if (status < 0) {
		FUNC1(status);
		goto out_err;
	}

	/* Now create entry in the local quota file */
	status = FUNC3(dquot);
	if (status < 0) {
		FUNC1(status);
		goto out_err;
	}
	FUNC2(0);
	return 0;
out_err:
	FUNC2(status);
	return status;
}