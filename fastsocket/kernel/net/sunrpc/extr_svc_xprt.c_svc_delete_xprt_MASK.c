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
struct svc_xprt {int /*<<< orphan*/  xpt_flags; int /*<<< orphan*/  xpt_ready; int /*<<< orphan*/  xpt_list; TYPE_1__* xpt_ops; struct svc_serv* xpt_server; } ;
struct svc_serv {int /*<<< orphan*/  sv_lock; int /*<<< orphan*/  sv_tmpcnt; } ;
struct svc_deferred_req {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* xpo_detach ) (struct svc_xprt*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  XPT_DEAD ; 
 int /*<<< orphan*/  XPT_DETACHED ; 
 int /*<<< orphan*/  XPT_TEMP ; 
 int /*<<< orphan*/  FUNC2 (struct svc_xprt*) ; 
 int /*<<< orphan*/  FUNC3 (char*,struct svc_xprt*) ; 
 int /*<<< orphan*/  FUNC4 (struct svc_deferred_req*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct svc_xprt*) ; 
 struct svc_deferred_req* FUNC10 (struct svc_xprt*) ; 
 int /*<<< orphan*/  FUNC11 (struct svc_xprt*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC14(struct svc_xprt *xprt)
{
	struct svc_serv	*serv = xprt->xpt_server;
	struct svc_deferred_req *dr;

	/* Only do this once */
	if (FUNC12(XPT_DEAD, &xprt->xpt_flags))
		FUNC0();

	FUNC3("svc: svc_delete_xprt(%p)\n", xprt);
	xprt->xpt_ops->xpo_detach(xprt);

	FUNC7(&serv->sv_lock);
	if (!FUNC12(XPT_DETACHED, &xprt->xpt_flags))
		FUNC5(&xprt->xpt_list);
	FUNC1(!FUNC6(&xprt->xpt_ready));
	if (FUNC13(XPT_TEMP, &xprt->xpt_flags))
		serv->sv_tmpcnt--;
	FUNC8(&serv->sv_lock);

	while ((dr = FUNC10(xprt)) != NULL)
		FUNC4(dr);

	FUNC2(xprt);
	FUNC11(xprt);
}