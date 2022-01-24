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
typedef  size_t u8 ;
struct usb_interface {struct usb_host_interface* cur_altsetting; } ;
struct TYPE_3__ {size_t bNumEndpoints; } ;
struct usb_host_interface {TYPE_2__* endpoint; TYPE_1__ desc; } ;
struct usb_endpoint_descriptor {int dummy; } ;
struct r8192_priv {size_t ep_in_num; size_t ep_out_num; size_t ep_num; void** txqueue_to_outpipemap; void** RtOutPipes; void** RtInPipes; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {struct usb_endpoint_descriptor desc; } ;

/* Variables and functions */
 struct r8192_priv* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (void**,size_t*,int) ; 
 int /*<<< orphan*/  FUNC2 (void**,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 scalar_t__ FUNC4 (struct usb_endpoint_descriptor*) ; 
 scalar_t__ FUNC5 (struct usb_endpoint_descriptor*) ; 
 void* FUNC6 (struct usb_endpoint_descriptor*) ; 

__attribute__((used)) static void FUNC7(struct usb_interface *intf, struct net_device *dev)
{
	struct r8192_priv *priv = FUNC0(dev);
	struct usb_host_interface *iface_desc;
	struct usb_endpoint_descriptor *endpoint;
	u8 i = 0;

	priv->ep_in_num = 0;
	priv->ep_out_num = 0;
	FUNC2(priv->RtOutPipes,0,16);
	FUNC2(priv->RtInPipes,0,16);

	iface_desc = intf->cur_altsetting;
	priv->ep_num = iface_desc->desc.bNumEndpoints;

	for (i = 0; i < priv->ep_num; ++i) {
		endpoint = &iface_desc->endpoint[i].desc;
		if (FUNC4(endpoint)) {
			priv->RtInPipes[priv->ep_in_num] = FUNC6(endpoint);
			priv->ep_in_num ++;
			//printk("in_endpoint_idx = %d\n", usb_endpoint_num(endpoint));
		} else if (FUNC5(endpoint)) {
			priv->RtOutPipes[priv->ep_out_num] = FUNC6(endpoint);
			priv->ep_out_num ++;
			//printk("out_endpoint_idx = %d\n", usb_endpoint_num(endpoint));
		}
	}
	{
		FUNC2(priv->txqueue_to_outpipemap,0,9);
		if (priv->ep_num == 6) {
			// BK, BE, VI, VO, HCCA, TXCMD, MGNT, HIGH, BEACON
			u8 queuetopipe[] = {3, 2, 1, 0, 4, 4, 4, 4, 4};

			FUNC1(priv->txqueue_to_outpipemap,queuetopipe,9);
		} else if (priv->ep_num == 4) {
			// BK, BE, VI, VO, HCCA, TXCMD, MGNT, HIGH, BEACON
			u8 queuetopipe[] = {1, 1, 0, 0, 2, 2, 2, 2, 2};

			FUNC1(priv->txqueue_to_outpipemap,queuetopipe,9);
		} else if (priv->ep_num > 9) {
			// BK, BE, VI, VO, HCCA, TXCMD, MGNT, HIGH, BEACON
			u8 queuetopipe[] = {3, 2, 1, 0, 4, 8, 7, 6, 5};

			FUNC1(priv->txqueue_to_outpipemap,queuetopipe,9);
		} else {//use sigle pipe
			// BK, BE, VI, VO, HCCA, TXCMD, MGNT, HIGH, BEACON
			u8 queuetopipe[] = {0, 0, 0, 0, 0, 0, 0, 0, 0};
			FUNC1(priv->txqueue_to_outpipemap,queuetopipe,9);
		}
	}
	FUNC3("==>ep_num:%d, in_ep_num:%d, out_ep_num:%d\n", priv->ep_num, priv->ep_in_num, priv->ep_out_num);

	FUNC3("==>RtInPipes:");
	for(i=0; i < priv->ep_in_num; i++)
		FUNC3("%d  ", priv->RtInPipes[i]);
	FUNC3("\n");

	FUNC3("==>RtOutPipes:");
	for(i=0; i < priv->ep_out_num; i++)
		FUNC3("%d  ", priv->RtOutPipes[i]);
	FUNC3("\n");

	FUNC3("==>txqueue_to_outpipemap for BK, BE, VI, VO, HCCA, TXCMD, MGNT, HIGH, BEACON:\n");
	for(i=0; i < 9; i++)
		FUNC3("%d  ", priv->txqueue_to_outpipemap[i]);
	FUNC3("\n");

	return;
}