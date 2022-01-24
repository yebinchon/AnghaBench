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
struct usblp {size_t current_protocol; TYPE_1__* protocol; int /*<<< orphan*/  dev; } ;
struct urb {int /*<<< orphan*/  transfer_flags; } ;
struct TYPE_4__ {int /*<<< orphan*/  bEndpointAddress; } ;
struct TYPE_3__ {TYPE_2__* epwrite; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  URB_FREE_BUFFER ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int,int /*<<< orphan*/ ) ; 
 struct urb* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct urb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,struct usblp*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  usblp_bulk_write ; 

__attribute__((used)) static struct urb *FUNC5(struct usblp *usblp, int transfer_length)
{
	struct urb *urb;
	char *writebuf;

	if ((writebuf = FUNC1(transfer_length, GFP_KERNEL)) == NULL)
		return NULL;
	if ((urb = FUNC2(0, GFP_KERNEL)) == NULL) {
		FUNC0(writebuf);
		return NULL;
	}

	FUNC3(urb, usblp->dev,
		FUNC4(usblp->dev,
		 usblp->protocol[usblp->current_protocol].epwrite->bEndpointAddress),
		writebuf, transfer_length, usblp_bulk_write, usblp);
	urb->transfer_flags |= URB_FREE_BUFFER;

	return urb;
}