#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct usblp {size_t current_protocol; int rcomplete; int rstatus; int /*<<< orphan*/  lock; scalar_t__ readcount; int /*<<< orphan*/  urbs; int /*<<< orphan*/  readbuf; TYPE_2__* protocol; int /*<<< orphan*/  dev; } ;
struct urb {int dummy; } ;
struct TYPE_4__ {TYPE_1__* epread; } ;
struct TYPE_3__ {int /*<<< orphan*/  bEndpointAddress; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  USBLP_BUF_SIZE_IN ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 struct urb* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct urb*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct urb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct usblp*) ; 
 int /*<<< orphan*/  FUNC6 (struct urb*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct urb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct urb*) ; 
 int /*<<< orphan*/  usblp_bulk_read ; 

__attribute__((used)) static int FUNC10(struct usblp *usblp)
{
	struct urb *urb;
	unsigned long flags;
	int rc;

	rc = -ENOMEM;
	if ((urb = FUNC3(0, GFP_KERNEL)) == NULL)
		goto raise_urb;

	FUNC5(urb, usblp->dev,
		FUNC7(usblp->dev,
		  usblp->protocol[usblp->current_protocol].epread->bEndpointAddress),
		usblp->readbuf, USBLP_BUF_SIZE_IN,
		usblp_bulk_read, usblp);
	FUNC4(urb, &usblp->urbs);

	FUNC1(&usblp->lock, flags);
	usblp->readcount = 0; /* XXX Why here? */
	usblp->rcomplete = 0;
	FUNC2(&usblp->lock, flags);
	if ((rc = FUNC8(urb, GFP_KERNEL)) < 0) {
		FUNC0("error submitting urb (%d)", rc);
		FUNC1(&usblp->lock, flags);
		usblp->rstatus = rc;
		usblp->rcomplete = 1;
		FUNC2(&usblp->lock, flags);
		goto raise_submit;
	}

	return 0;

raise_submit:
	FUNC9(urb);
	FUNC6(urb);
raise_urb:
	return rc;
}