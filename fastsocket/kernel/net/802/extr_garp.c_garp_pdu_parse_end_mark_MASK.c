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
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff {scalar_t__* data; } ;

/* Variables and functions */
 scalar_t__ GARP_END_MARK ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int) ; 

__attribute__((used)) static int FUNC2(struct sk_buff *skb)
{
	if (!FUNC0(skb, sizeof(u8)))
		return -1;
	if (*skb->data == GARP_END_MARK) {
		FUNC1(skb, sizeof(u8));
		return -1;
	}
	return 0;
}