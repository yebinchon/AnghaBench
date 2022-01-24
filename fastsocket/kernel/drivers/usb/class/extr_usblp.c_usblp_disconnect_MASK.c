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
struct usblp {int /*<<< orphan*/  used; int /*<<< orphan*/  mut; int /*<<< orphan*/  rwait; int /*<<< orphan*/  wwait; scalar_t__ present; int /*<<< orphan*/  dev; } ;
struct usb_interface {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  dev_attr_ieee1284_id ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_interface*,int /*<<< orphan*/ *) ; 
 struct usblp* FUNC6 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_interface*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  usblp_class ; 
 int /*<<< orphan*/  FUNC8 (struct usblp*) ; 
 int /*<<< orphan*/  usblp_mutex ; 
 int /*<<< orphan*/  FUNC9 (struct usblp*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(struct usb_interface *intf)
{
	struct usblp *usblp = FUNC6 (intf);

	FUNC5(intf, &usblp_class);

	if (!usblp || !usblp->dev) {
		FUNC1(&intf->dev, "bogus disconnect\n");
		FUNC0 ();
	}

	FUNC2(&intf->dev, &dev_attr_ieee1284_id);

	FUNC3 (&usblp_mutex);
	FUNC3 (&usblp->mut);
	usblp->present = 0;
	FUNC10(&usblp->wwait);
	FUNC10(&usblp->rwait);
	FUNC7 (intf, NULL);

	FUNC9(usblp);
	FUNC4 (&usblp->mut);

	if (!usblp->used)
		FUNC8 (usblp);
	FUNC4 (&usblp_mutex);
}