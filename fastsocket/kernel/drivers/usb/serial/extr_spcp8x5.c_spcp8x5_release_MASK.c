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
struct usb_serial {int num_ports; int /*<<< orphan*/ * port; } ;
struct spcp8x5_private {int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct spcp8x5_private*) ; 
 struct spcp8x5_private* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct usb_serial *serial)
{
	int i;
	struct spcp8x5_private *priv;

	for (i = 0; i < serial->num_ports; i++) {
		priv = FUNC2(serial->port[i]);
		if (priv) {
			FUNC0(priv->buf);
			FUNC1(priv);
		}
	}
}