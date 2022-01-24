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
struct urb {int transfer_buffer_length; int actual_length; int transfer_flags; int /*<<< orphan*/  pipe; } ;
struct c67x00_td {int /*<<< orphan*/  pipe; struct urb* urb; } ;

/* Variables and functions */
 int URB_ZERO_PACKET ; 
 int FUNC0 (struct c67x00_td*) ; 
 int /*<<< orphan*/  FUNC1 (struct c67x00_td*) ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC5(struct c67x00_td *td)
{
	int maxps, need_empty, remaining;
	struct urb *urb = td->urb;
	int act_bytes;

	act_bytes = FUNC0(td);

	if (FUNC2(!act_bytes))
		return 1;	/* This was an empty packet */

	maxps = FUNC3(FUNC1(td), td->pipe, FUNC4(td->pipe));

	if (FUNC2(act_bytes < maxps))
		return 1;	/* Smaller then full packet */

	remaining = urb->transfer_buffer_length - urb->actual_length;
	need_empty = (urb->transfer_flags & URB_ZERO_PACKET) &&
	    FUNC4(urb->pipe) && !(remaining % maxps);

	if (FUNC2(!remaining && !need_empty))
		return 1;

	return 0;
}