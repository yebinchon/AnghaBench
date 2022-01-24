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
struct wlp {int /*<<< orphan*/ * rc; int /*<<< orphan*/  mutex; int /*<<< orphan*/ * dev_info; int /*<<< orphan*/  eda; int /*<<< orphan*/  uwb_notifs_handler; int /*<<< orphan*/  pal; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct wlp*) ; 

void FUNC7(struct wlp *wlp)
{
	FUNC6(wlp);
	FUNC4(&wlp->pal);
	FUNC3(wlp->rc, &wlp->uwb_notifs_handler);
	FUNC5(&wlp->eda);
	FUNC1(&wlp->mutex);
	if (wlp->dev_info != NULL)
		FUNC0(wlp->dev_info);
	FUNC2(&wlp->mutex);
	wlp->rc = NULL;
}