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
typedef  int /*<<< orphan*/  u32 ;
struct r8180_priv {int rxringcount; int /*<<< orphan*/  rxbuffersize; int /*<<< orphan*/  rxbuffer; int /*<<< orphan*/  rxringdma; int /*<<< orphan*/  rxring; struct pci_dev* pdev; } ;
struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(struct net_device *dev)
{
	struct r8180_priv *priv = (struct r8180_priv *)FUNC1(dev);
	struct pci_dev *pdev = priv->pdev;
	int count = priv->rxringcount;

	FUNC2(pdev, sizeof(u32)*8*count+256,
			    priv->rxring, priv->rxringdma);

	FUNC0(dev,&(priv->rxbuffer),priv->rxbuffersize,0);
}