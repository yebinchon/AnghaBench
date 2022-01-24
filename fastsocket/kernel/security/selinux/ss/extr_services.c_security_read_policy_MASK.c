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
struct policy_file {unsigned long len; void* data; } ;
typedef  unsigned long ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  policy_rwlock ; 
 int /*<<< orphan*/  policydb ; 
 int FUNC0 (int /*<<< orphan*/ *,struct policy_file*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC3 () ; 
 int /*<<< orphan*/  ss_initialized ; 
 void* FUNC4 (unsigned long) ; 

int FUNC5(void **data, ssize_t *len)
{
	int rc;
	struct policy_file fp;

	if (!ss_initialized)
		return -EINVAL;

	*len = FUNC3();

	*data = FUNC4(*len);
	if (!*data)
		return -ENOMEM;

	fp.data = *data;
	fp.len = *len;

	FUNC1(&policy_rwlock);
	rc = FUNC0(&policydb, &fp);
	FUNC2(&policy_rwlock);

	if (rc)
		return rc;

	*len = (unsigned long)fp.data - (unsigned long)*data;
	return 0;

}