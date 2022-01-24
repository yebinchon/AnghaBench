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
typedef  int /*<<< orphan*/  u8 ;
struct wusbhc {int /*<<< orphan*/  mutex; int /*<<< orphan*/  cluster_id; } ;
struct whc {scalar_t__ base; } ;
struct usb_hcd {int uses_new_polling; int /*<<< orphan*/  state; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  HCD_FLAG_POLL_RH ; 
 int /*<<< orphan*/  HC_STATE_RUNNING ; 
 int /*<<< orphan*/  WUSBCMD_RUN ; 
 scalar_t__ WUSBINTR ; 
 int WUSBINTR_ASYNC_SCHED_SYNCED ; 
 int WUSBINTR_DNTS_INT ; 
 int WUSBINTR_ERR_INT ; 
 int WUSBINTR_GEN_CMD_DONE ; 
 int WUSBINTR_HOST_ERR ; 
 int WUSBINTR_INT ; 
 int /*<<< orphan*/  FUNC0 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct wusbhc* FUNC4 (struct usb_hcd*) ; 
 int FUNC5 (struct whc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct whc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 struct whc* FUNC8 (struct wusbhc*) ; 

__attribute__((used)) static int FUNC9(struct usb_hcd *usb_hcd)
{
	struct wusbhc *wusbhc = FUNC4(usb_hcd);
	struct whc *whc = FUNC8(wusbhc);
	u8 bcid;
	int ret;

	FUNC1(&wusbhc->mutex);

	FUNC0(WUSBINTR_GEN_CMD_DONE
		  | WUSBINTR_HOST_ERR
		  | WUSBINTR_ASYNC_SCHED_SYNCED
		  | WUSBINTR_DNTS_INT
		  | WUSBINTR_ERR_INT
		  | WUSBINTR_INT,
		  whc->base + WUSBINTR);

	/* set cluster ID */
	bcid = FUNC7();
	ret = FUNC5(whc, bcid);
	if (ret < 0)
		goto out;
	wusbhc->cluster_id = bcid;

	/* start HC */
	FUNC6(whc, WUSBCMD_RUN, WUSBCMD_RUN);

	usb_hcd->uses_new_polling = 1;
	FUNC3(HCD_FLAG_POLL_RH, &usb_hcd->flags);
	usb_hcd->state = HC_STATE_RUNNING;

out:
	FUNC2(&wusbhc->mutex);
	return ret;
}