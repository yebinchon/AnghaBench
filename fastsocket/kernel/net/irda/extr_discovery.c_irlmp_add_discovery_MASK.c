#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  irda_queue_t ;
struct TYPE_12__ {int /*<<< orphan*/  hb_spinlock; } ;
typedef  TYPE_2__ hashbin_t ;
struct TYPE_11__ {scalar_t__ saddr; scalar_t__ daddr; scalar_t__ hints; int /*<<< orphan*/  info; } ;
struct TYPE_13__ {TYPE_1__ data; int /*<<< orphan*/  firststamp; int /*<<< orphan*/  timestamp; } ;
typedef  TYPE_3__ discovery_t ;
typedef  int /*<<< orphan*/  __u16 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC9(hashbin_t *cachelog, discovery_t *new)
{
	discovery_t *discovery, *node;
	unsigned long flags;

	/* Set time of first discovery if node is new (see below) */
	new->firststamp = new->timestamp;

	FUNC6(&cachelog->hb_spinlock, flags);

	/*
	 * Remove all discoveries of devices that has previously been
	 * discovered on the same link with the same name (info), or the
	 * same daddr. We do this since some devices (mostly PDAs) change
	 * their device address between every discovery.
	 */
	discovery = (discovery_t *) FUNC1(cachelog);
	while (discovery != NULL ) {
		node = discovery;

		/* Be sure to stay one item ahead */
		discovery = (discovery_t *) FUNC2(cachelog);

		if ((node->data.saddr == new->data.saddr) &&
		    ((node->data.daddr == new->data.daddr) ||
		     (FUNC8(node->data.info, new->data.info) == 0)))
		{
			/* This discovery is a previous discovery
			 * from the same device, so just remove it
			 */
			FUNC4(cachelog, (irda_queue_t *) node);
			/* Check if hints bits are unchanged */
			if (FUNC0((__u16 *)node->data.hints) == FUNC0((__u16 *)new->data.hints))
				/* Set time of first discovery for this node */
				new->firststamp = node->firststamp;
			FUNC5(node);
		}
	}

	/* Insert the new and updated version */
	FUNC3(cachelog, (irda_queue_t *) new, new->data.daddr, NULL);

	FUNC7(&cachelog->hb_spinlock, flags);
}