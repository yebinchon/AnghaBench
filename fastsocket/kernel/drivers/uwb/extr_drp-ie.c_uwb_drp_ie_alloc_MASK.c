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
struct TYPE_2__ {int /*<<< orphan*/  element_id; } ;
struct uwb_ie_drp {TYPE_1__ hdr; } ;
struct uwb_drp_alloc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  UWB_IE_DRP ; 
 int UWB_NUM_ZONES ; 
 struct uwb_ie_drp* FUNC0 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct uwb_ie_drp *FUNC1(void)
{
	struct uwb_ie_drp *drp_ie;

	drp_ie = FUNC0(sizeof(struct uwb_ie_drp) +
			UWB_NUM_ZONES * sizeof(struct uwb_drp_alloc),
			GFP_KERNEL);
	if (drp_ie) {
		drp_ie->hdr.element_id = UWB_IE_DRP;
	}
	return drp_ie;
}