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
struct sk_buff {struct sk_buff* next; } ;
struct link {struct sk_buff* proto_msg_queue; struct sk_buff* first_out; struct sk_buff* oldest_deferred_in; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct link*) ; 

void FUNC2(struct link *l_ptr)
{
	struct sk_buff *buf;
	struct sk_buff *next;

	buf = l_ptr->oldest_deferred_in;
	while (buf) {
		next = buf->next;
		FUNC0(buf);
		buf = next;
	}

	buf = l_ptr->first_out;
	while (buf) {
		next = buf->next;
		FUNC0(buf);
		buf = next;
	}

	FUNC1(l_ptr);

	FUNC0(l_ptr->proto_msg_queue);
	l_ptr->proto_msg_queue = NULL;
}