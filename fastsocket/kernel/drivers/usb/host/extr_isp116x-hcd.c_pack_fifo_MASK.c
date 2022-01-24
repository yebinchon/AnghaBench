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
struct ptd {int /*<<< orphan*/  faddr; int /*<<< orphan*/  len; int /*<<< orphan*/  mps; int /*<<< orphan*/  count; } ;
struct isp116x_ep {int /*<<< orphan*/  length; int /*<<< orphan*/  data; struct isp116x_ep* active; struct ptd ptd; } ;
struct isp116x {scalar_t__ atl_last_dir; int atl_bufshrt; int atl_buflen; struct isp116x_ep* atl_active; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int HCATLPORT ; 
 int /*<<< orphan*/  HCXFERCTR ; 
 int /*<<< orphan*/  HCuPINT ; 
 int HCuPINT_AIIEOT ; 
 int ISP116x_WRITE_OFFSET ; 
 scalar_t__ PTD_DIR_IN ; 
 int /*<<< orphan*/  FUNC2 (struct ptd*) ; 
 int /*<<< orphan*/  FUNC3 (struct ptd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct isp116x*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct isp116x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct isp116x*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct isp116x*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct isp116x *isp116x)
{
	struct isp116x_ep *ep;
	struct ptd *ptd;
	int buflen = isp116x->atl_last_dir == PTD_DIR_IN
	    ? isp116x->atl_bufshrt : isp116x->atl_buflen;

	FUNC6(isp116x, HCuPINT, HCuPINT_AIIEOT);
	FUNC6(isp116x, HCXFERCTR, buflen);
	FUNC4(isp116x, HCATLPORT | ISP116x_WRITE_OFFSET);
	for (ep = isp116x->atl_active; ep; ep = ep->active) {
		ptd = &ep->ptd;
		FUNC2(ptd);
		FUNC3(ptd, ep->data);
		FUNC5(isp116x, ptd->count);
		FUNC5(isp116x, ptd->mps);
		FUNC5(isp116x, ptd->len);
		FUNC5(isp116x, ptd->faddr);
		buflen -= sizeof(struct ptd);
		/* Skip writing data for last IN PTD */
		if (ep->active || (isp116x->atl_last_dir != PTD_DIR_IN)) {
			FUNC7(isp116x, ep->data, ep->length);
			buflen -= FUNC0(ep->length, 4);
		}
	}
	FUNC1(buflen);
}