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
struct usb_hcd {scalar_t__ regs; } ;
struct isp1760_hcd {int i_thresh; int /*<<< orphan*/  periodic_size; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_I_TDPS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ HC_HCCPARAMS ; 
 struct isp1760_hcd* FUNC2 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct usb_hcd *hcd)
{
	struct isp1760_hcd		*priv = FUNC2(hcd);
	u32			hcc_params;

	FUNC4(&priv->lock);

	/*
	 * hw default: 1K periodic list heads, one per frame.
	 * periodic_size can shrink by USBCMD update if hcc_params allows.
	 */
	priv->periodic_size = DEFAULT_I_TDPS;

	/* controllers may cache some of the periodic schedule ... */
	hcc_params = FUNC3(hcd->regs + HC_HCCPARAMS);
	/* full frame cache */
	if (FUNC0(hcc_params))
		priv->i_thresh = 8;
	else /* N microframes cached */
		priv->i_thresh = 2 + FUNC1(hcc_params);

	return 0;
}