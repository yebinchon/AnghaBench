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
struct context {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  SECSID_NULL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,char,char**,struct context*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  policydb ; 
 int /*<<< orphan*/  selinux_mls_enabled ; 

int FUNC3(char *str, struct context *context, gfp_t gfp_mask)
{
	char *tmpstr, *freestr;
	int rc;

	if (!selinux_mls_enabled)
		return -EINVAL;

	/* we need freestr because mls_context_to_sid will change
	   the value of tmpstr */
	tmpstr = freestr = FUNC1(str, gfp_mask);
	if (!tmpstr) {
		rc = -ENOMEM;
	} else {
		rc = FUNC2(&policydb, ':', &tmpstr, context,
					NULL, SECSID_NULL);
		FUNC0(freestr);
	}

	return rc;
}