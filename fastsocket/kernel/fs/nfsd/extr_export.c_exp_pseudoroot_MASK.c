#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct svc_rqst {int dummy; } ;
struct svc_fh {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dentry; } ;
struct svc_export {TYPE_1__ ex_path; } ;
typedef  scalar_t__ __be32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct svc_export*) ; 
 int /*<<< orphan*/  FUNC1 (struct svc_export*) ; 
 scalar_t__ FUNC2 (struct svc_export*,struct svc_rqst*) ; 
 int /*<<< orphan*/  FUNC3 (struct svc_export*) ; 
 scalar_t__ FUNC4 (struct svc_fh*,struct svc_export*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct svc_fh*) ; 
 struct svc_export* FUNC6 (struct svc_rqst*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

__be32
FUNC8(struct svc_rqst *rqstp, struct svc_fh *fhp)
{
	struct svc_export *exp;
	__be32 rv;

	exp = FUNC6(rqstp);
	if (FUNC0(exp))
		return FUNC7(FUNC1(exp));
	rv = FUNC4(fhp, exp, exp->ex_path.dentry, NULL);
	if (rv)
		goto out;
	rv = FUNC2(exp, rqstp);
	if (rv)
		FUNC5(fhp);
out:
	FUNC3(exp);
	return rv;
}