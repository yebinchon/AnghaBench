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
struct ptd {int dummy; } ;
struct isp1362_hcd {int dummy; } ;
struct isp1362_ep_queue {int dummy; } ;
struct isp1362_ep {int length; int ptd_offset; struct ptd* data; struct ptd ptd; } ;

/* Variables and functions */
 scalar_t__ PTD_DIR_IN ; 
 scalar_t__ FUNC0 (struct ptd*) ; 
 int PTD_HEADER_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct ptd*) ; 
 int /*<<< orphan*/  FUNC3 (struct ptd*,struct ptd*) ; 
 int /*<<< orphan*/  FUNC4 (struct isp1362_hcd*,struct ptd*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ptd*) ; 

__attribute__((used)) static void FUNC6(struct isp1362_hcd *isp1362_hcd, struct isp1362_ep *ep,
			      struct isp1362_ep_queue *epq)
{
	struct ptd *ptd = &ep->ptd;
	int len = FUNC0(ptd) == PTD_DIR_IN ? 0 : ep->length;

	FUNC1(ep->ptd_offset < 0);

	FUNC5(ptd);
	FUNC4(isp1362_hcd, ptd, ep->ptd_offset, PTD_HEADER_SIZE);
	if (len)
		FUNC4(isp1362_hcd, ep->data,
				     ep->ptd_offset + PTD_HEADER_SIZE, len);

	FUNC2(ptd);
	FUNC3(ptd, ep->data);
}