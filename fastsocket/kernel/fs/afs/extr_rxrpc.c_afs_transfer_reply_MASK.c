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
struct sk_buff {size_t len; } ;
struct afs_call {scalar_t__ reply_size; scalar_t__ buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,scalar_t__,size_t) ; 

void FUNC2(struct afs_call *call, struct sk_buff *skb)
{
	size_t len = skb->len;

	if (FUNC1(skb, 0, call->buffer + call->reply_size, len) < 0)
		FUNC0();
	call->reply_size += len;
}