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
struct link {struct sk_buff* defragm_buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 

void FUNC1(struct link *l_ptr)
{
	struct sk_buff *buf = l_ptr->defragm_buf;
	struct sk_buff *next;

	while (buf) {
		next = buf->next;
		FUNC0(buf);
		buf = next;
	}
	l_ptr->defragm_buf = NULL;
}