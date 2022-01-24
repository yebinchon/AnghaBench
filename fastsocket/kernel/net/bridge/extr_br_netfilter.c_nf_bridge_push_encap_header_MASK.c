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
struct sk_buff {unsigned int network_header; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,unsigned int) ; 

__attribute__((used)) static inline void FUNC2(struct sk_buff *skb)
{
	unsigned int len = FUNC0(skb);

	FUNC1(skb, len);
	skb->network_header -= len;
}