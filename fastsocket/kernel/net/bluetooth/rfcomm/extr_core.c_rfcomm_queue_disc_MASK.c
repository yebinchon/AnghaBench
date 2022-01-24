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
struct sk_buff {int dummy; } ;
struct rfcomm_dlc {int /*<<< orphan*/  tx_queue; int /*<<< orphan*/  addr; int /*<<< orphan*/  dlci; } ;
struct rfcomm_cmd {int /*<<< orphan*/  fcs; int /*<<< orphan*/  len; int /*<<< orphan*/  ctrl; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct rfcomm_dlc*,int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  RFCOMM_DISC ; 
 int /*<<< orphan*/  RFCOMM_SCHED_TX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int) ; 
 struct sk_buff* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct sk_buff*) ; 

__attribute__((used)) static int FUNC8(struct rfcomm_dlc *d)
{
	struct rfcomm_cmd *cmd;
	struct sk_buff *skb;

	FUNC0("dlc %p dlci %d", d, d->dlci);

	skb = FUNC5(sizeof(*cmd), GFP_KERNEL);
	if (!skb)
		return -ENOMEM;

	cmd = (void *) FUNC4(skb, sizeof(*cmd));
	cmd->addr = d->addr;
	cmd->ctrl = FUNC1(RFCOMM_DISC, 1);
	cmd->len  = FUNC3(0);
	cmd->fcs  = FUNC2((u8 *) cmd);

	FUNC7(&d->tx_queue, skb);
	FUNC6(RFCOMM_SCHED_TX);
	return 0;
}