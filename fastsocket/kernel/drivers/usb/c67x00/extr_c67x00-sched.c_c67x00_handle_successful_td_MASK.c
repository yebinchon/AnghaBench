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
struct urb {int interval; int /*<<< orphan*/  actual_length; int /*<<< orphan*/  transfer_buffer_length; } ;
struct c67x00_td {int /*<<< orphan*/  privdata; int /*<<< orphan*/  pipe; struct urb* urb; } ;
struct c67x00_hcd {int dummy; } ;

/* Variables and functions */
#define  DATA_STAGE 133 
#define  PIPE_BULK 132 
#define  PIPE_CONTROL 131 
#define  PIPE_INTERRUPT 130 
#define  SETUP_STAGE 129 
#define  STATUS_STAGE 128 
 int /*<<< orphan*/  FUNC0 (struct c67x00_hcd*,struct c67x00_td*) ; 
 int /*<<< orphan*/  FUNC1 (struct c67x00_td*) ; 
 int /*<<< orphan*/  FUNC2 (struct c67x00_hcd*,struct urb*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct c67x00_td*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct c67x00_hcd *c67x00,
					struct c67x00_td *td)
{
	struct urb *urb = td->urb;

	if (!urb)
		return;

	urb->actual_length += FUNC3(td);

	switch (FUNC5(td->pipe)) {
		/* isochronous tds are handled separately */
	case PIPE_CONTROL:
		switch (td->privdata) {
		case SETUP_STAGE:
			urb->interval =
			    urb->transfer_buffer_length ?
			    DATA_STAGE : STATUS_STAGE;
			/* Don't count setup_packet with normal data: */
			urb->actual_length = 0;
			break;

		case DATA_STAGE:
			if (FUNC1(td)) {
				urb->interval = STATUS_STAGE;
				FUNC0(c67x00, td);
			}
			break;

		case STATUS_STAGE:
			urb->interval = 0;
			FUNC2(c67x00, urb, 0);
			break;
		}
		break;

	case PIPE_INTERRUPT:
	case PIPE_BULK:
		if (FUNC4(FUNC1(td))) {
			FUNC0(c67x00, td);
			FUNC2(c67x00, urb, 0);
		}
		break;
	}
}