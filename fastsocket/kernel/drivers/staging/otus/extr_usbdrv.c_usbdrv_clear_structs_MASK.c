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
struct usbdrv_private {int /*<<< orphan*/  pdev; int /*<<< orphan*/  regp; struct usbdrv_private* ml_priv; } ;
struct net_device {int /*<<< orphan*/  pdev; int /*<<< orphan*/  regp; struct net_device* ml_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct usbdrv_private*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC5(struct net_device *dev)
{
    struct usbdrv_private *macp = dev->ml_priv;


#if (WLAN_HOSTIF == WLAN_PCI)
    FUNC0(macp->regp);

    FUNC3(macp->pdev);
    FUNC2(macp->pdev);
    FUNC4(macp->pdev, NULL);
#endif

    FUNC1(macp);

    FUNC1(dev);

}