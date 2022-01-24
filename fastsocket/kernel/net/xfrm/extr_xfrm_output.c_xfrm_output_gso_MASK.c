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
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 int FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 struct sk_buff* FUNC3 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 
 int FUNC5 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC6(struct sk_buff *skb)
{
	struct sk_buff *segs;

	segs = FUNC3(skb, 0);
	FUNC2(skb);
	if (FUNC0(segs))
		return FUNC1(segs);

	do {
		struct sk_buff *nskb = segs->next;
		int err;

		segs->next = NULL;
		err = FUNC5(segs);

		if (FUNC4(err)) {
			while ((segs = nskb)) {
				nskb = segs->next;
				segs->next = NULL;
				FUNC2(segs);
			}
			return err;
		}

		segs = nskb;
	} while (segs);

	return 0;
}