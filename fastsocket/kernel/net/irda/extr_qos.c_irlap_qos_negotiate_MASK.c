#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_8__ ;
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct TYPE_16__ {int /*<<< orphan*/  value; } ;
struct TYPE_15__ {int /*<<< orphan*/  value; } ;
struct TYPE_14__ {int /*<<< orphan*/  value; } ;
struct TYPE_13__ {int /*<<< orphan*/  value; } ;
struct TYPE_12__ {int /*<<< orphan*/  value; } ;
struct TYPE_11__ {int /*<<< orphan*/  value; } ;
struct TYPE_10__ {int /*<<< orphan*/  value; } ;
struct TYPE_17__ {TYPE_7__ link_disc_time; TYPE_6__ min_turn_time; TYPE_5__ max_turn_time; TYPE_4__ additional_bofs; TYPE_3__ window_size; TYPE_2__ data_size; TYPE_1__ baud_rate; } ;
struct irlap_cb {TYPE_8__ qos_tx; TYPE_8__ qos_rx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct irlap_cb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_8__*) ; 
 int /*<<< orphan*/  irlap_param_info ; 

int FUNC4(struct irlap_cb *self, struct sk_buff *skb)
{
	int ret;

	ret = FUNC1(self, skb->data, skb->len,
				     &irlap_param_info);

	/* Convert the negotiated bits to values */
	FUNC2(&self->qos_tx);
	FUNC2(&self->qos_rx);

	FUNC3(&self->qos_tx);

	FUNC0(2, "Setting BAUD_RATE to %d bps.\n",
		   self->qos_tx.baud_rate.value);
	FUNC0(2, "Setting DATA_SIZE to %d bytes\n",
		   self->qos_tx.data_size.value);
	FUNC0(2, "Setting WINDOW_SIZE to %d\n",
		   self->qos_tx.window_size.value);
	FUNC0(2, "Setting XBOFS to %d\n",
		   self->qos_tx.additional_bofs.value);
	FUNC0(2, "Setting MAX_TURN_TIME to %d ms.\n",
		   self->qos_tx.max_turn_time.value);
	FUNC0(2, "Setting MIN_TURN_TIME to %d usecs.\n",
		   self->qos_tx.min_turn_time.value);
	FUNC0(2, "Setting LINK_DISC to %d secs.\n",
		   self->qos_tx.link_disc_time.value);
	return ret;
}