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
struct xhci_hcd {int dummy; } ;
struct urb_priv {struct urb_priv** td; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct urb_priv*) ; 

void FUNC1(struct xhci_hcd *xhci, struct urb_priv *urb_priv)
{
	if (urb_priv) {
		FUNC0(urb_priv->td[0]);
		FUNC0(urb_priv);
	}
}