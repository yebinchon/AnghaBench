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
struct xfrm_sec_ctx {int /*<<< orphan*/  ctx_sid; } ;
struct task_security_struct {int /*<<< orphan*/  sid; } ;

/* Variables and functions */
 int /*<<< orphan*/  ASSOCIATION__SETCONTEXT ; 
 int /*<<< orphan*/  SECCLASS_ASSOCIATION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct task_security_struct* FUNC2 () ; 
 int /*<<< orphan*/  selinux_xfrm_refcount ; 

int FUNC3(struct xfrm_sec_ctx *ctx)
{
	const struct task_security_struct *tsec = FUNC2();
	int rc = 0;

	if (ctx) {
		rc = FUNC1(tsec->sid, ctx->ctx_sid,
				  SECCLASS_ASSOCIATION,
				  ASSOCIATION__SETCONTEXT, NULL);
		if (rc == 0)
			FUNC0(&selinux_xfrm_refcount);
	}

	return rc;
}