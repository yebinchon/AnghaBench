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
struct urb_priv {scalar_t__ state; scalar_t__ tds_cnt; scalar_t__ num_of_tds; } ;
struct urb {struct urb_priv* hcpriv; } ;
struct td {scalar_t__ status; struct urb* urb; } ;
struct fhci_hcd {int dummy; } ;
struct ed {int dummy; } ;

/* Variables and functions */
 scalar_t__ URB_DEL ; 
 scalar_t__ USB_TD_INPROGRESS ; 
 int /*<<< orphan*/  FUNC0 (struct urb*,struct td*) ; 
 struct td* FUNC1 (struct ed*) ; 
 int /*<<< orphan*/  FUNC2 (struct fhci_hcd*,struct urb*) ; 
 struct td* FUNC3 (struct ed*) ; 

void FUNC4(struct fhci_hcd *fhci, struct ed *ed)
{
	struct td *td = FUNC3(ed);
	struct urb *urb = td->urb;
	struct urb_priv *urb_priv = urb->hcpriv;

	if (urb_priv->state == URB_DEL) {
		td = FUNC1(ed);
		/* HC may have partly processed this TD */
		if (td->status != USB_TD_INPROGRESS)
			FUNC0(urb, td);

		/* URB is done;clean up */
		if (++(urb_priv->tds_cnt) == urb_priv->num_of_tds)
			FUNC2(fhci, urb);
	}
}