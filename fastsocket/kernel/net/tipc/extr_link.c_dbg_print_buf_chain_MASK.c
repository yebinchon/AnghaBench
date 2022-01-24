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

/* Variables and functions */
 scalar_t__ DBG_OUTPUT ; 
 scalar_t__ TIPC_NULL ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC2(struct sk_buff *root_buf)
{
	if (DBG_OUTPUT != TIPC_NULL) {
		struct sk_buff *buf = root_buf;

		while (buf) {
			FUNC1(FUNC0(buf), "In chain: ");
			buf = buf->next;
		}
	}
}