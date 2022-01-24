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
typedef  int /*<<< orphan*/  u32 ;
struct xfrm_user_sec_ctx {int dummy; } ;
struct xfrm_state {int /*<<< orphan*/  security; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  selinux_xfrm_refcount ; 
 int FUNC2 (int /*<<< orphan*/ *,struct xfrm_user_sec_ctx*,int /*<<< orphan*/ ) ; 

int FUNC3(struct xfrm_state *x, struct xfrm_user_sec_ctx *uctx,
		u32 secid)
{
	int err;

	FUNC0(!x);

	err = FUNC2(&x->security, uctx, secid);
	if (err == 0)
		FUNC1(&selinux_xfrm_refcount);
	return err;
}