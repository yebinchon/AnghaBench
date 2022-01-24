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
struct r8180_priv {struct pci_dev* pdev; } ;
struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;
struct buffer {struct buffer* buf; int /*<<< orphan*/  dma; struct buffer* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 scalar_t__ FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int,struct buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

void FUNC4(struct net_device *dev,struct buffer **buffer,int len,short
consistent)
{

	struct buffer *tmp,*next;
	struct r8180_priv *priv = (struct r8180_priv *)FUNC0(dev);
	struct pci_dev *pdev=priv->pdev;

	if (!*buffer)
		return;

	tmp = *buffer;

	do{
		next=tmp->next;
		if(consistent){
			FUNC2(pdev,len,
				    tmp->buf,tmp->dma);
		}else{
			FUNC3(pdev, tmp->dma,
			len,PCI_DMA_FROMDEVICE);
			FUNC1(tmp->buf);
		}
		FUNC1(tmp);
		tmp = next;
	}
	while(next != *buffer);

	*buffer=NULL;
}