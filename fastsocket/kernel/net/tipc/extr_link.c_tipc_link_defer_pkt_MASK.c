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
struct tipc_msg {int dummy; } ;
struct sk_buff {struct sk_buff* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 struct tipc_msg* FUNC1 (struct sk_buff*) ; 
 scalar_t__ FUNC2 (int,int) ; 
 int FUNC3 (struct tipc_msg*) ; 

u32 FUNC4(struct sk_buff **head,
			struct sk_buff **tail,
			struct sk_buff *buf)
{
	struct sk_buff *prev = NULL;
	struct sk_buff *crs = *head;
	u32 seq_no = FUNC3(FUNC1(buf));

	buf->next = NULL;

	/* Empty queue ? */
	if (*head == NULL) {
		*head = *tail = buf;
		return 1;
	}

	/* Last ? */
	if (FUNC2(FUNC3(FUNC1(*tail)), seq_no)) {
		(*tail)->next = buf;
		*tail = buf;
		return 1;
	}

	/* Scan through queue and sort it in */
	do {
		struct tipc_msg *msg = FUNC1(crs);

		if (FUNC2(seq_no, FUNC3(msg))) {
			buf->next = crs;
			if (prev)
				prev->next = buf;
			else
				*head = buf;
			return 1;
		}
		if (seq_no == FUNC3(msg)) {
			break;
		}
		prev = crs;
		crs = crs->next;
	}
	while (crs);

	/* Message is a duplicate of an existing message */

	FUNC0(buf);
	return 0;
}