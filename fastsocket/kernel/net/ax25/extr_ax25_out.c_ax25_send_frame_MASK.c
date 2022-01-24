#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  ax25_digi ;
struct TYPE_18__ {int /*<<< orphan*/  slave; } ;
struct TYPE_19__ {int* values; TYPE_2__ dama; } ;
typedef  TYPE_3__ ax25_dev ;
struct TYPE_20__ {int /*<<< orphan*/  state; TYPE_1__* ax25_dev; int /*<<< orphan*/ * digipeat; void* dest_addr; void* source_addr; } ;
typedef  TYPE_4__ ax25_cb ;
typedef  void* ax25_address ;
struct TYPE_17__ {int* values; } ;

/* Variables and functions */
#define  AX25_PROTO_DAMA_SLAVE 130 
#define  AX25_PROTO_STD_DUPLEX 129 
#define  AX25_PROTO_STD_SIMPLEX 128 
 int /*<<< orphan*/  AX25_STATE_1 ; 
 size_t AX25_VALUES_PACLEN ; 
 size_t AX25_VALUES_PROTOCOL ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 TYPE_4__* FUNC2 () ; 
 TYPE_3__* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,TYPE_3__*) ; 
 TYPE_4__* FUNC6 (void**,void**,int /*<<< orphan*/ *,struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,int,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

ax25_cb *FUNC11(struct sk_buff *skb, int paclen, ax25_address *src, ax25_address *dest, ax25_digi *digi, struct net_device *dev)
{
	ax25_dev *ax25_dev;
	ax25_cb *ax25;

	/*
	 * Take the default packet length for the device if zero is
	 * specified.
	 */
	if (paclen == 0) {
		if ((ax25_dev = FUNC3(dev)) == NULL)
			return NULL;

		paclen = ax25_dev->values[AX25_VALUES_PACLEN];
	}

	/*
	 * Look for an existing connection.
	 */
	if ((ax25 = FUNC6(src, dest, digi, dev)) != NULL) {
		FUNC7(ax25, paclen, skb);
		return ax25;		/* It already existed */
	}

	if ((ax25_dev = FUNC3(dev)) == NULL)
		return NULL;

	if ((ax25 = FUNC2()) == NULL)
		return NULL;

	FUNC5(ax25, ax25_dev);

	ax25->source_addr = *src;
	ax25->dest_addr   = *dest;

	if (digi != NULL) {
		ax25->digipeat = FUNC10(digi, sizeof(*digi), GFP_ATOMIC);
		if (ax25->digipeat == NULL) {
			FUNC1(ax25);
			return NULL;
		}
	}

	switch (ax25->ax25_dev->values[AX25_VALUES_PROTOCOL]) {
	case AX25_PROTO_STD_SIMPLEX:
	case AX25_PROTO_STD_DUPLEX:
		FUNC9(ax25);
		break;

#ifdef CONFIG_AX25_DAMA_SLAVE
	case AX25_PROTO_DAMA_SLAVE:
		if (ax25_dev->dama.slave)
			ax25_ds_establish_data_link(ax25);
		else
			ax25_std_establish_data_link(ax25);
		break;
#endif
	}

	FUNC0(ax25);

	ax25->state = AX25_STATE_1;

	FUNC8(ax25);

	FUNC7(ax25, paclen, skb);

	return ax25;			/* We had to create it */
}