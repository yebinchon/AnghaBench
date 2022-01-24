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
typedef  int /*<<< orphan*/  u8 ;
struct usb_device {int dummy; } ;
struct r8192_priv {struct usb_device* udev; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  RTL8187_REQT_WRITE ; 
 int /*<<< orphan*/  RTL8187_REQ_SET_REGS ; 
 scalar_t__ FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int FUNC2 (struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_device*,int /*<<< orphan*/ ) ; 

void FUNC4(struct net_device *dev, int indx, u8 data)
{
	int status;

	struct r8192_priv *priv = (struct r8192_priv *)FUNC0(dev);
	struct usb_device *udev = priv->udev;

	status = FUNC2(udev, FUNC3(udev, 0),
			       RTL8187_REQ_SET_REGS, RTL8187_REQT_WRITE,
			       indx, 0, &data, 1, HZ / 2);

        if (status < 0)
        {
                FUNC1("write_nic_byte TimeOut! status:%d\n", status);
        }


}