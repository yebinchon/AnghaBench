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
struct tipc_msg {int dummy; } ;
struct sk_buff {scalar_t__ data; } ;

/* Variables and functions */
 struct sk_buff* FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct tipc_msg*,scalar_t__) ; 

__attribute__((used)) static struct sk_buff *FUNC3(struct sk_buff *skb, u32 from_pos)
{
	struct tipc_msg *msg = (struct tipc_msg *)(skb->data + from_pos);
	u32 size = FUNC1(msg);
	struct sk_buff *eb;

	eb = FUNC0(size);
	if (eb)
		FUNC2(eb, msg, size);
	return eb;
}