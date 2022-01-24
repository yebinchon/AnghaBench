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
struct sk_buff {int data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(int pool, int size, int elements)
{
	int freed = elements;
	while (freed) {

		struct sk_buff *skb = FUNC2(size + 128);
		if (FUNC5(skb == NULL)) {
			FUNC3
			    ("Failed to allocate skb for hardware pool %d\n",
			     pool);
			break;
		}

		FUNC4(skb, 128 - (((unsigned long)skb->data) & 0x7f));
		*(struct sk_buff **)(skb->data - sizeof(void *)) = skb;
		FUNC1(skb->data, pool, FUNC0(size / 128));
		freed--;
	}
	return elements - freed;
}