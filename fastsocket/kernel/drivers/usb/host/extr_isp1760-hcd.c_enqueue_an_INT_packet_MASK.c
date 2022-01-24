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
typedef  int u32 ;
struct usb_hcd {scalar_t__ regs; } ;
struct ptd {int dummy; } ;
struct isp1760_qtd {int /*<<< orphan*/  urb; int /*<<< orphan*/  length; } ;
struct isp1760_qh {int dummy; } ;
struct isp1760_hcd {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ HC_BUFFER_STATUS_REG ; 
 scalar_t__ HC_INT_IRQ_MASK_OR_REG ; 
 scalar_t__ HC_INT_PTD_SKIPMAP_REG ; 
 int INT_BUFFER ; 
 int INT_REGS_OFFSET ; 
 int FUNC1 (int) ; 
 int FUNC2 (struct isp1760_hcd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int,struct isp1760_hcd*,struct isp1760_qh*,int /*<<< orphan*/ ,int,struct isp1760_qtd*) ; 
 struct isp1760_hcd* FUNC4 (struct usb_hcd*) ; 
 int FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static void FUNC8(struct usb_hcd *hcd, struct isp1760_qh *qh,
				  struct isp1760_qtd *qtd)
{
	struct isp1760_hcd *priv = FUNC4(hcd);
	u32 skip_map, or_map;
	u32 queue_entry;
	u32 slot;
	u32 int_regs, payload;
	u32 buffstatus;

	/*
	 * When this function is called from the interrupt handler to enqueue
	 * a follow-up packet, the SKIP register gets written and read back
	 * almost immediately. With ISP1761, this register requires a delay of
	 * 195ns between a write and subsequent read (see section 15.1.1.3).
	 */
	FUNC7(195);
	skip_map = FUNC5(hcd->regs + HC_INT_PTD_SKIPMAP_REG);

	FUNC0(!skip_map);
	slot = FUNC1(skip_map);
	queue_entry = 1 << slot;

	int_regs = INT_REGS_OFFSET + slot * sizeof(struct ptd);

	payload = FUNC2(priv, qtd->length);

	FUNC3(int_regs, payload, priv, qh, qtd->urb, slot, qtd);

	or_map = FUNC5(hcd->regs + HC_INT_IRQ_MASK_OR_REG);
	or_map |= queue_entry;
	FUNC6(or_map, hcd->regs + HC_INT_IRQ_MASK_OR_REG);

	skip_map &= ~queue_entry;
	FUNC6(skip_map, hcd->regs + HC_INT_PTD_SKIPMAP_REG);

	buffstatus = FUNC5(hcd->regs + HC_BUFFER_STATUS_REG);
	buffstatus |= INT_BUFFER;
	FUNC6(buffstatus, hcd->regs + HC_BUFFER_STATUS_REG);
}