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
struct sk_buff {int dummy; } ;
struct lapb_frame {int dummy; } ;
struct lapb_cb {int state; } ;

/* Variables and functions */
#define  LAPB_STATE_0 132 
#define  LAPB_STATE_1 131 
#define  LAPB_STATE_2 130 
#define  LAPB_STATE_3 129 
#define  LAPB_STATE_4 128 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 scalar_t__ FUNC1 (struct lapb_cb*,struct sk_buff*,struct lapb_frame*) ; 
 int /*<<< orphan*/  FUNC2 (struct lapb_cb*) ; 
 int /*<<< orphan*/  FUNC3 (struct lapb_cb*,struct sk_buff*,struct lapb_frame*) ; 
 int /*<<< orphan*/  FUNC4 (struct lapb_cb*,struct sk_buff*,struct lapb_frame*) ; 
 int /*<<< orphan*/  FUNC5 (struct lapb_cb*,struct sk_buff*,struct lapb_frame*) ; 
 int /*<<< orphan*/  FUNC6 (struct lapb_cb*,struct sk_buff*,struct lapb_frame*) ; 
 int /*<<< orphan*/  FUNC7 (struct lapb_cb*,struct sk_buff*,struct lapb_frame*) ; 

void FUNC8(struct lapb_cb *lapb, struct sk_buff *skb)
{
	struct lapb_frame frame;

	if (FUNC1(lapb, skb, &frame) < 0) {
		FUNC0(skb);
		return;
	}

	switch (lapb->state) {
	case LAPB_STATE_0:
		FUNC3(lapb, skb, &frame); break;
	case LAPB_STATE_1:
		FUNC4(lapb, skb, &frame); break;
	case LAPB_STATE_2:
		FUNC5(lapb, skb, &frame); break;
	case LAPB_STATE_3:
		FUNC6(lapb, skb, &frame); break;
	case LAPB_STATE_4:
		FUNC7(lapb, skb, &frame); break;
	}

	FUNC2(lapb);
}