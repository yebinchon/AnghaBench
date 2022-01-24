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
struct r8a66597_td {size_t pipenum; TYPE_1__* urb; } ;
struct r8a66597 {int timeout_map; int /*<<< orphan*/ * td_timer; int /*<<< orphan*/ * pipe_queue; } ;
struct TYPE_2__ {int /*<<< orphan*/  pipe; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
#define  PIPE_INTERRUPT 129 
#define  PIPE_ISOCHRONOUS 128 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct r8a66597 *r8a66597, struct r8a66597_td *td)
{
	unsigned long time;

	FUNC0(!td);

	if (!FUNC1(&r8a66597->pipe_queue[td->pipenum]) &&
	    !FUNC4(td->urb->pipe) && FUNC5(td->urb->pipe)) {
		r8a66597->timeout_map |= 1 << td->pipenum;
		switch (FUNC6(td->urb->pipe)) {
		case PIPE_INTERRUPT:
		case PIPE_ISOCHRONOUS:
			time = 30;
			break;
		default:
			time = 300;
			break;
		}

		FUNC2(&r8a66597->td_timer[td->pipenum],
			  jiffies + FUNC3(time));
	}
}