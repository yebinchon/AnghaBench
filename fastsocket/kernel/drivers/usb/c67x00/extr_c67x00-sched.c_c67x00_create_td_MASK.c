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
struct urb {int /*<<< orphan*/  pipe; struct c67x00_urb_priv* hcpriv; } ;
struct c67x00_urb_priv {int port; int /*<<< orphan*/  ep_data; } ;
struct c67x00_td {int td_addr; int pid_ep; int dev_addr; int ctrl_reg; int retry_cnt; unsigned long privdata; int /*<<< orphan*/  td_list; struct urb* urb; void* data; void* next_td_addr; scalar_t__ residue; scalar_t__ status; int /*<<< orphan*/  pipe; void* port_length; void* ly_base_addr; int /*<<< orphan*/  ep_data; } ;
struct c67x00_hcd {int low_speed_ports; int next_td_addr; int next_buf_addr; int /*<<< orphan*/  td_list; TYPE_1__* sie; } ;
typedef  int __u8 ;
struct TYPE_4__ {scalar_t__ speed; } ;
struct TYPE_3__ {int sie_num; } ;

/* Variables and functions */
 int ARM_EN ; 
 int CY_TD_SIZE ; 
 int EMSGSIZE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int ISO_EN ; 
#define  PIPE_BULK 131 
#define  PIPE_CONTROL 130 
#define  PIPE_INTERRUPT 129 
#define  PIPE_ISOCHRONOUS 128 
 int PREAMBLE_EN ; 
 int SEQ_SEL ; 
 int TD_PIDEP_OFFSET ; 
 int TT_BULK ; 
 int TT_CONTROL ; 
 int TT_INTERRUPT ; 
 int TT_ISOCHRONOUS ; 
 int TT_OFFSET ; 
 scalar_t__ USB_SPEED_LOW ; 
 void* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct c67x00_hcd*,struct urb*,int,int) ; 
 struct c67x00_td* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC4 (struct c67x00_td*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct c67x00_hcd *c67x00, struct urb *urb,
			    void *data, int len, int pid, int toggle,
			    unsigned long privdata)
{
	struct c67x00_td *td;
	struct c67x00_urb_priv *urbp = urb->hcpriv;
	const __u8 active_flag = 1, retry_cnt = 1;
	__u8 cmd = 0;
	int tt = 0;

	if (FUNC1(c67x00, urb, len, FUNC8(urb->pipe)
				  || FUNC7(urb->pipe)))
		return -EMSGSIZE;	/* Not really an error, but expected */

	td = FUNC2(sizeof(*td), GFP_ATOMIC);
	if (!td)
		return -ENOMEM;

	td->pipe = urb->pipe;
	td->ep_data = urbp->ep_data;

	if ((FUNC4(td)->speed == USB_SPEED_LOW) &&
	    !(c67x00->low_speed_ports & (1 << urbp->port)))
		cmd |= PREAMBLE_EN;

	switch (FUNC9(td->pipe)) {
	case PIPE_ISOCHRONOUS:
		tt = TT_ISOCHRONOUS;
		cmd |= ISO_EN;
		break;
	case PIPE_CONTROL:
		tt = TT_CONTROL;
		break;
	case PIPE_BULK:
		tt = TT_BULK;
		break;
	case PIPE_INTERRUPT:
		tt = TT_INTERRUPT;
		break;
	}

	if (toggle)
		cmd |= SEQ_SEL;

	cmd |= ARM_EN;

	/* SW part */
	td->td_addr = c67x00->next_td_addr;
	c67x00->next_td_addr = c67x00->next_td_addr + CY_TD_SIZE;

	/* HW part */
	td->ly_base_addr = FUNC0(c67x00->next_buf_addr);
	td->port_length = FUNC0((c67x00->sie->sie_num << 15) |
					(urbp->port << 14) | (len & 0x3FF));
	td->pid_ep = ((pid & 0xF) << TD_PIDEP_OFFSET) |
	    (FUNC6(td->pipe) & 0xF);
	td->dev_addr = FUNC5(td->pipe) & 0x7F;
	td->ctrl_reg = cmd;
	td->status = 0;
	td->retry_cnt = (tt << TT_OFFSET) | (active_flag << 4) | retry_cnt;
	td->residue = 0;
	td->next_td_addr = FUNC0(c67x00->next_td_addr);

	/* SW part */
	td->data = data;
	td->urb = urb;
	td->privdata = privdata;

	c67x00->next_buf_addr += (len + 1) & ~0x01;	/* properly align */

	FUNC3(&td->td_list, &c67x00->td_list);
	return 0;
}