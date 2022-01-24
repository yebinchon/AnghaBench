#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct urb {int /*<<< orphan*/  pipe; TYPE_3__* dev; } ;
struct ptd {void* dw3; void* dw2; void* dw1; void* dw0; } ;
struct isp1760_qtd {int packet_type; int /*<<< orphan*/  toggle; int /*<<< orphan*/  length; } ;
struct isp1760_qh {int ping; int toggle; } ;
struct isp1760_hcd {int dummy; } ;
struct TYPE_6__ {scalar_t__ speed; TYPE_2__* tt; int /*<<< orphan*/  ttport; } ;
struct TYPE_5__ {TYPE_1__* hub; } ;
struct TYPE_4__ {int /*<<< orphan*/  devnum; } ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_COUNTER ; 
 int NAK_COUNTER ; 
 int PTD_ACTIVE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int) ; 
 int FUNC8 (int) ; 
 int FUNC9 (int) ; 
 int FUNC10 (int) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int) ; 
 int PTD_SE_USB_LOSPEED ; 
 int PTD_TRANS_BULK ; 
 int PTD_TRANS_INT ; 
 int PTD_TRANS_SPLIT ; 
 int PTD_VALID ; 
 int RL_COUNTER ; 
 scalar_t__ USB_SPEED_HIGH ; 
 scalar_t__ USB_SPEED_LOW ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 void* FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (struct ptd*,int /*<<< orphan*/ ,int) ; 
 int FUNC16 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int FUNC20 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC23(struct isp1760_hcd *priv, struct isp1760_qh *qh,
			struct isp1760_qtd *qtd, struct urb *urb,
			u32 payload, struct ptd *ptd)
{
	u32 dw0;
	u32 dw1;
	u32 dw2;
	u32 dw3;
	u32 maxpacket;
	u32 multi;
	u32 pid_code;
	u32 rl = RL_COUNTER;
	u32 nak = NAK_COUNTER;

	/* according to 3.6.2, max packet len can not be > 0x400 */
	maxpacket = FUNC16(urb->dev, urb->pipe, FUNC22(urb->pipe));
	multi =  1 + ((maxpacket >> 11) & 0x3);
	maxpacket &= 0x7ff;

	/* DW0 */
	dw0 = PTD_VALID;
	dw0 |= FUNC6(qtd->length);
	dw0 |= FUNC7(maxpacket);
	dw0 |= FUNC4(FUNC20(urb->pipe));
	dw1 = FUNC20(urb->pipe) >> 1;

	/* DW1 */
	dw1 |= FUNC3(FUNC19(urb->pipe));

	pid_code = qtd->packet_type;
	dw1 |= FUNC10(pid_code);

	if (FUNC17(urb->pipe))
		dw1 |= PTD_TRANS_BULK;
	else if  (FUNC21(urb->pipe))
		dw1 |= PTD_TRANS_INT;

	if (urb->dev->speed != USB_SPEED_HIGH) {
		/* split transaction */

		dw1 |= PTD_TRANS_SPLIT;
		if (urb->dev->speed == USB_SPEED_LOW)
			dw1 |= PTD_SE_USB_LOSPEED;

		dw1 |= FUNC11(urb->dev->ttport);
		dw1 |= FUNC5(urb->dev->tt->hub->devnum);

		/* SE bit for Split INT transfers */
		if (FUNC21(urb->pipe) &&
				(urb->dev->speed == USB_SPEED_LOW))
			dw1 |= 2 << 16;

		dw3 = 0;
		rl = 0;
		nak = 0;
	} else {
		dw0 |= FUNC8(multi);
		if (FUNC18(urb->pipe) || FUNC17(urb->pipe))
			dw3 = qh->ping;
		else
			dw3 = 0;
	}
	/* DW2 */
	dw2 = 0;
	dw2 |= FUNC1(FUNC13(payload));
	dw2 |= FUNC12(rl);
	dw3 |= FUNC9(nak);

	/* DW3 */
	if (FUNC18(urb->pipe))
		dw3 |= FUNC2(qtd->toggle);
	else
		dw3 |= qh->toggle;


	dw3 |= PTD_ACTIVE;
	/* Cerr */
	dw3 |= FUNC0(ERR_COUNTER);

	FUNC15(ptd, 0, sizeof(*ptd));

	ptd->dw0 = FUNC14(dw0);
	ptd->dw1 = FUNC14(dw1);
	ptd->dw2 = FUNC14(dw2);
	ptd->dw3 = FUNC14(dw3);
}