#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ priv; } ;
typedef  TYPE_1__ wlandevice_t ;
struct sk_buff {int /*<<< orphan*/  data; } ;
struct TYPE_5__ {int /*<<< orphan*/  link_bh; int /*<<< orphan*/  authq; } ;
typedef  TYPE_2__ hfa384x_t ;
typedef  int /*<<< orphan*/  hfa384x_InfFrame_t ;

/* Variables and functions */
 struct sk_buff* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct sk_buff*) ; 

__attribute__((used)) static void FUNC5(wlandevice_t *wlandev,
				  hfa384x_InfFrame_t *inf)
{
	hfa384x_t *hw = (hfa384x_t *) wlandev->priv;
	struct sk_buff *skb;

	skb = FUNC0(sizeof(*inf));
	if (skb) {
		FUNC3(skb, sizeof(*inf));
		FUNC1(skb->data, inf, sizeof(*inf));
		FUNC4(&hw->authq, skb);
		FUNC2(&hw->link_bh);
	}
}