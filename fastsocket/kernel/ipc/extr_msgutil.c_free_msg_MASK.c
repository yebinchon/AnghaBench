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
struct msg_msgseg {struct msg_msgseg* next; } ;
struct msg_msg {struct msg_msg* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct msg_msgseg*) ; 
 int /*<<< orphan*/  FUNC1 (struct msg_msgseg*) ; 

void FUNC2(struct msg_msg *msg)
{
	struct msg_msgseg *seg;

	FUNC1(msg);

	seg = msg->next;
	FUNC0(msg);
	while (seg != NULL) {
		struct msg_msgseg *tmp = seg->next;
		FUNC0(seg);
		seg = tmp;
	}
}