#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  instance; } ;
struct irlap_cb {TYPE_1__ notify; } ;

/* Variables and functions */
 scalar_t__ LAP_ADDR_HEADER ; 
 scalar_t__ LAP_CTRL_HEADER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,scalar_t__) ; 

void FUNC2(struct irlap_cb *self, struct sk_buff *skb,
			   int unreliable)
{
	/* Hide LAP header from IrLMP layer */
	FUNC1(skb, LAP_ADDR_HEADER+LAP_CTRL_HEADER);

	FUNC0(self->notify.instance, skb, unreliable);
}