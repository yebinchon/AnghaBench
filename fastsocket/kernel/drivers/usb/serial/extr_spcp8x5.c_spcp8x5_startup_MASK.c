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
typedef  int u16 ;
struct usb_serial {int num_ports; int /*<<< orphan*/ * port; TYPE_2__* dev; } ;
struct spcp8x5_private {int type; int /*<<< orphan*/ * buf; int /*<<< orphan*/  delta_msr_wait; int /*<<< orphan*/  lock; } ;
typedef  enum spcp8x5_type { ____Placeholder_spcp8x5_type } spcp8x5_type ;
struct TYPE_3__ {scalar_t__ idVendor; int /*<<< orphan*/  idProduct; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; TYPE_1__ descriptor; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int SPCP825_007_TYPE ; 
 int SPCP825_008_TYPE ; 
 int SPCP825_INTERMATIC_TYPE ; 
 int SPCP825_PHILIP_TYPE ; 
 int SPCP835_TYPE ; 
 int /*<<< orphan*/  SPCP8x5_BUF_SIZE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct spcp8x5_private*) ; 
 struct spcp8x5_private* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct spcp8x5_private* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct spcp8x5_private*) ; 

__attribute__((used)) static int FUNC11(struct usb_serial *serial)
{
	struct spcp8x5_private *priv;
	int i;
	enum spcp8x5_type type = SPCP825_007_TYPE;
	u16 product = FUNC7(serial->dev->descriptor.idProduct);

	if (product == 0x0201)
		type = SPCP825_007_TYPE;
	else if (product == 0x0231)
		type = SPCP835_TYPE;
	else if (product == 0x0235)
		type = SPCP825_008_TYPE;
	else if (product == 0x0204)
		type = SPCP825_INTERMATIC_TYPE;
	else if (product == 0x0471 &&
		 serial->dev->descriptor.idVendor == FUNC1(0x081e))
		type = SPCP825_PHILIP_TYPE;
	FUNC2(&serial->dev->dev, "device type = %d\n", (int)type);

	for (i = 0; i < serial->num_ports; ++i) {
		priv = FUNC6(sizeof(struct spcp8x5_private), GFP_KERNEL);
		if (!priv)
			goto cleanup;

		FUNC8(&priv->lock);
		priv->buf = FUNC0(SPCP8x5_BUF_SIZE);
		if (priv->buf == NULL)
			goto cleanup2;

		FUNC4(&priv->delta_msr_wait);
		priv->type = type;
		FUNC10(serial->port[i] , priv);

	}

	return 0;

cleanup2:
	FUNC5(priv);
cleanup:
	for (--i; i >= 0; --i) {
		priv = FUNC9(serial->port[i]);
		FUNC3(priv->buf);
		FUNC5(priv);
		FUNC10(serial->port[i] , NULL);
	}
	return -ENOMEM;
}