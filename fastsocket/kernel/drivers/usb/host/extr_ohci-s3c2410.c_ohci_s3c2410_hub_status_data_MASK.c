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
struct TYPE_2__ {int /*<<< orphan*/  controller; } ;
struct usb_hcd {TYPE_1__ self; } ;
struct s3c2410_hcd_port {int oc_changed; int flags; } ;
struct s3c2410_hcd_info {struct s3c2410_hcd_port* port; } ;

/* Variables and functions */
 int S3C_HCDFLG_USED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (struct usb_hcd*,char*) ; 
 struct s3c2410_hcd_info* FUNC2 (struct usb_hcd*) ; 

__attribute__((used)) static int
FUNC3 (struct usb_hcd *hcd, char *buf)
{
	struct s3c2410_hcd_info *info = FUNC2(hcd);
	struct s3c2410_hcd_port *port;
	int orig;
	int portno;

	orig  = FUNC1 (hcd, buf);

	if (info == NULL)
		return orig;

	port = &info->port[0];

	/* mark any changed port as changed */

	for (portno = 0; portno < 2; port++, portno++) {
		if (port->oc_changed == 1 &&
		    port->flags & S3C_HCDFLG_USED) {
			FUNC0(hcd->self.controller,
				"oc change on port %d\n", portno);

			if (orig < 1)
				orig = 1;

			buf[0] |= 1<<(portno+1);
		}
	}

	return orig;
}