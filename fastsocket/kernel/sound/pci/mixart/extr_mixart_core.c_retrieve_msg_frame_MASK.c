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
typedef  scalar_t__ u32 ;
struct mixart_mgr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mixart_mgr*,scalar_t__) ; 
 scalar_t__ MSG_BOUND_STACK_SIZE ; 
 scalar_t__ MSG_OUTBOUND_POST_HEAD ; 
 scalar_t__ MSG_OUTBOUND_POST_STACK ; 
 scalar_t__ MSG_OUTBOUND_POST_TAIL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct mixart_mgr *mgr, u32 *msg_frame)
{
	/* read the message frame fifo */
	u32 headptr, tailptr;

	tailptr = FUNC1(FUNC0(mgr, MSG_OUTBOUND_POST_TAIL));
	headptr = FUNC1(FUNC0(mgr, MSG_OUTBOUND_POST_HEAD));

	if (tailptr == headptr)
		return 0; /* no message posted */

	if (tailptr < MSG_OUTBOUND_POST_STACK)
		return 0; /* error */
	if (tailptr >= MSG_OUTBOUND_POST_STACK + MSG_BOUND_STACK_SIZE)
		return 0; /* error */

	*msg_frame = FUNC1(FUNC0(mgr, tailptr));

	/* increment the tail index */
	tailptr += 4;
	if( tailptr >= (MSG_OUTBOUND_POST_STACK+MSG_BOUND_STACK_SIZE) )
		tailptr = MSG_OUTBOUND_POST_STACK;
	FUNC2(tailptr, FUNC0(mgr, MSG_OUTBOUND_POST_TAIL));

	return 1;
}