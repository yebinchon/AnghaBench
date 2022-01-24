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
typedef  size_t u32 ;
struct usb_hcd {size_t regs; } ;
struct urb {int dummy; } ;
struct ptd {int dummy; } ;
struct isp1760_qtd {int status; int /*<<< orphan*/  data_buffer; } ;
struct isp1760_qh {int dummy; } ;
struct isp1760_hcd {TYPE_1__* int_ints; } ;
typedef  int /*<<< orphan*/  ptd ;
struct TYPE_2__ {size_t payload; int /*<<< orphan*/  data_buffer; struct isp1760_qtd* qtd; struct isp1760_qh* qh; struct urb* urb; } ;

/* Variables and functions */
 int URB_ENQUEUED ; 
 int URB_TYPE_INT ; 
 int /*<<< orphan*/  FUNC0 (struct isp1760_qtd*,struct isp1760_hcd*,size_t) ; 
 struct usb_hcd* FUNC1 (struct isp1760_hcd*) ; 
 int /*<<< orphan*/  FUNC2 (struct isp1760_hcd*,size_t*,size_t,int) ; 
 int /*<<< orphan*/  FUNC3 (struct isp1760_hcd*,struct isp1760_qh*,struct isp1760_qtd*,struct urb*,size_t,struct ptd*) ; 

__attribute__((used)) static void FUNC4(u32 int_regs, u32 payload,
		struct isp1760_hcd *priv, struct isp1760_qh *qh,
		struct urb *urb, u32 slot,  struct isp1760_qtd *qtd)
{
	struct ptd ptd;
	struct usb_hcd *hcd = FUNC1(priv);

	FUNC3(priv, qh, qtd, urb, payload, &ptd);
	FUNC2(priv, (u32 *)&ptd, hcd->regs + int_regs, sizeof(ptd));
	FUNC0(qtd, priv, payload);

	priv->int_ints[slot].urb = urb;
	priv->int_ints[slot].qh = qh;
	priv->int_ints[slot].qtd = qtd;
	priv->int_ints[slot].data_buffer = qtd->data_buffer;
	priv->int_ints[slot].payload = payload;
	qtd->status |= URB_ENQUEUED | URB_TYPE_INT;
	qtd->status |= slot << 16;
}