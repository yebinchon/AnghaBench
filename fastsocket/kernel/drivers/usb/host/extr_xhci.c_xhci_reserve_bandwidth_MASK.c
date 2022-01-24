#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct xhci_virt_device {TYPE_2__* tt_info; TYPE_1__* eps; int /*<<< orphan*/  udev; int /*<<< orphan*/  bw_table; int /*<<< orphan*/  in_ctx; } ;
struct xhci_input_control_ctx {int dummy; } ;
struct xhci_hcd {int dummy; } ;
struct xhci_container_ctx {int dummy; } ;
struct xhci_bw_info {int dummy; } ;
typedef  int /*<<< orphan*/  ep_bw_info ;
struct TYPE_6__ {int active_eps; } ;
struct TYPE_5__ {struct xhci_bw_info bw_info; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct xhci_input_control_ctx*,int) ; 
 scalar_t__ FUNC1 (struct xhci_input_control_ctx*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct xhci_bw_info*,struct xhci_bw_info*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct xhci_hcd*,struct xhci_bw_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (struct xhci_hcd*,struct xhci_virt_device*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct xhci_hcd*,struct xhci_bw_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,TYPE_2__*) ; 
 struct xhci_input_control_ctx* FUNC6 (struct xhci_hcd*,struct xhci_container_ctx*) ; 
 int /*<<< orphan*/  FUNC7 (struct xhci_hcd*,int /*<<< orphan*/ ,struct xhci_input_control_ctx*,struct xhci_virt_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct xhci_hcd*,struct xhci_virt_device*,int) ; 

__attribute__((used)) static int FUNC9(struct xhci_hcd *xhci,
		struct xhci_virt_device *virt_dev,
		struct xhci_container_ctx *in_ctx)
{
	struct xhci_bw_info ep_bw_info[31];
	int i;
	struct xhci_input_control_ctx *ctrl_ctx;
	int old_active_eps = 0;

	if (virt_dev->tt_info)
		old_active_eps = virt_dev->tt_info->active_eps;

	ctrl_ctx = FUNC6(xhci, in_ctx);

	for (i = 0; i < 31; i++) {
		if (!FUNC0(ctrl_ctx, i) && !FUNC1(ctrl_ctx, i))
			continue;

		/* Make a copy of the BW info in case we need to revert this */
		FUNC2(&ep_bw_info[i], &virt_dev->eps[i].bw_info,
				sizeof(ep_bw_info[i]));
		/* Drop the endpoint from the interval table if the endpoint is
		 * being dropped or changed.
		 */
		if (FUNC1(ctrl_ctx, i))
			FUNC5(xhci,
					&virt_dev->eps[i].bw_info,
					virt_dev->bw_table,
					virt_dev->udev,
					&virt_dev->eps[i],
					virt_dev->tt_info);
	}
	/* Overwrite the information stored in the endpoints' bw_info */
	FUNC7(xhci, virt_dev->in_ctx, ctrl_ctx, virt_dev);
	for (i = 0; i < 31; i++) {
		/* Add any changed or added endpoints to the interval table */
		if (FUNC0(ctrl_ctx, i))
			FUNC3(xhci,
					&virt_dev->eps[i].bw_info,
					virt_dev->bw_table,
					virt_dev->udev,
					&virt_dev->eps[i],
					virt_dev->tt_info);
	}

	if (!FUNC4(xhci, virt_dev, old_active_eps)) {
		/* Ok, this fits in the bandwidth we have.
		 * Update the number of active TTs.
		 */
		FUNC8(xhci, virt_dev, old_active_eps);
		return 0;
	}

	/* We don't have enough bandwidth for this, revert the stored info. */
	for (i = 0; i < 31; i++) {
		if (!FUNC0(ctrl_ctx, i) && !FUNC1(ctrl_ctx, i))
			continue;

		/* Drop the new copies of any added or changed endpoints from
		 * the interval table.
		 */
		if (FUNC0(ctrl_ctx, i)) {
			FUNC5(xhci,
					&virt_dev->eps[i].bw_info,
					virt_dev->bw_table,
					virt_dev->udev,
					&virt_dev->eps[i],
					virt_dev->tt_info);
		}
		/* Revert the endpoint back to its old information */
		FUNC2(&virt_dev->eps[i].bw_info, &ep_bw_info[i],
				sizeof(ep_bw_info[i]));
		/* Add any changed or dropped endpoints back into the table */
		if (FUNC1(ctrl_ctx, i))
			FUNC3(xhci,
					&virt_dev->eps[i].bw_info,
					virt_dev->bw_table,
					virt_dev->udev,
					&virt_dev->eps[i],
					virt_dev->tt_info);
	}
	return -ENOMEM;
}