#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u8 ;
typedef  scalar_t__ u32 ;
typedef  scalar_t__ u16 ;
struct TYPE_4__ {scalar_t__ PktSize; int /*<<< orphan*/  LINIP; } ;
typedef  TYPE_1__ tx_desc_cmd_819x_usb ;
struct urb {int dummy; } ;
struct sk_buff {scalar_t__ len; scalar_t__ data; scalar_t__ cb; } ;
struct r8192_priv {int /*<<< orphan*/ * RtOutPipes; int /*<<< orphan*/  udev; int /*<<< orphan*/ * tx_pending; } ;
struct net_device {int dummy; } ;
struct TYPE_5__ {size_t queue_index; int /*<<< orphan*/  bLastIniPkt; } ;
typedef  TYPE_2__ cb_desc ;

/* Variables and functions */
 short ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ MAX_DEV_ADDR_SIZE ; 
 scalar_t__ USB_HWDESC_HEADER_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 struct r8192_priv* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  rtl8192_tx_isr ; 
 unsigned int FUNC5 (struct r8192_priv*,size_t) ; 
 struct urb* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct urb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct urb*,int /*<<< orphan*/ ) ; 

short FUNC10(struct net_device *dev, struct sk_buff *skb)
{
	struct r8192_priv *priv = FUNC2(dev);
	int			status;
	struct urb		*tx_urb;
	unsigned int 		idx_pipe;
	tx_desc_cmd_819x_usb *pdesc = (tx_desc_cmd_819x_usb *)skb->data;
	cb_desc *tcb_desc = (cb_desc *)(skb->cb + MAX_DEV_ADDR_SIZE);
	u8 queue_index = tcb_desc->queue_index;
	u32			PktSize = 0;

	//printk("\n %s::::::::::::::::::::::queue_index = %d\n",__FUNCTION__, queue_index);
	FUNC0(&priv->tx_pending[queue_index]);

	tx_urb = FUNC6(0,GFP_ATOMIC);
	if(!tx_urb){
		FUNC1(skb);
		return -ENOMEM;
	}

	FUNC3(pdesc, 0, USB_HWDESC_HEADER_LEN);

	/* Tx descriptor ought to be set according to the skb->cb */
	pdesc->LINIP = tcb_desc->bLastIniPkt;
	PktSize = (u16)(skb->len - USB_HWDESC_HEADER_LEN);
	pdesc->PktSize = PktSize;
	//printk("PKTSize = %d %x\n",pdesc->PktSize,pdesc->PktSize);
	//----------------------------------------------------------------------------
	// Fill up USB_OUT_CONTEXT.
	//----------------------------------------------------------------------------
	// Get index to out pipe from specified QueueID.
	idx_pipe = FUNC5(priv,queue_index);
	//printk("=============>%s queue_index:%d, outpipe:%d\n", __func__,queue_index,priv->RtOutPipes[idx_pipe]);

	FUNC7(tx_urb,
	                            priv->udev,
	                            FUNC8(priv->udev,priv->RtOutPipes[idx_pipe]),
	                            skb->data,
	                            skb->len,
	                            rtl8192_tx_isr,
	                            skb);

	status = FUNC9(tx_urb, GFP_ATOMIC);
	if (!status){
		return 0;
	}else{
		FUNC4("Error TX CMD URB, error %d",
				status);
		return -1;
	}
}