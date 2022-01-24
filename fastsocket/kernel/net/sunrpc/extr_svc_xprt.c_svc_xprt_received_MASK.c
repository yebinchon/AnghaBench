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
struct svc_xprt {int /*<<< orphan*/  xpt_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  XPT_BUSY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct svc_xprt*) ; 
 int /*<<< orphan*/  FUNC3 (struct svc_xprt*) ; 
 int /*<<< orphan*/  FUNC4 (struct svc_xprt*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC6(struct svc_xprt *xprt)
{
	FUNC0(!FUNC5(XPT_BUSY, &xprt->xpt_flags));
	/* As soon as we clear busy, the xprt could be closed and
	 * 'put', so we need a reference to call svc_xprt_enqueue with:
	 */
	FUNC3(xprt);
	FUNC1(XPT_BUSY, &xprt->xpt_flags);
	FUNC2(xprt);
	FUNC4(xprt);
}