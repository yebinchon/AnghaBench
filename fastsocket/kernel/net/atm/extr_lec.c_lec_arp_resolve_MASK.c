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
struct lec_priv {int lane_version; scalar_t__ maximum_unknown_frame_count; int /*<<< orphan*/  lec_arp_lock; struct atm_vcc* mcast_vcc; } ;
struct TYPE_2__ {int /*<<< orphan*/  function; void* expires; } ;
struct lec_arp_table {scalar_t__ status; int no_tries; scalar_t__ packets_flooded; int is_rdesc; TYPE_1__ timer; void* timestamp; void* last_used; struct atm_vcc* vcc; } ;
struct atm_vcc {int dummy; } ;

/* Variables and functions */
 scalar_t__ ESI_ARP_PENDING ; 
 scalar_t__ ESI_FLUSH_PENDING ; 
 scalar_t__ ESI_FORWARD_DIRECT ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  bus_mac ; 
 int /*<<< orphan*/  FUNC1 (unsigned char const*,int /*<<< orphan*/ ) ; 
 void* jiffies ; 
 int /*<<< orphan*/  l_arp_xmt ; 
 int /*<<< orphan*/  l_rdesc_arp_xmt ; 
 int /*<<< orphan*/  FUNC2 (struct lec_priv*,struct lec_arp_table*) ; 
 int /*<<< orphan*/  lec_arp_expire_arp ; 
 struct lec_arp_table* FUNC3 (struct lec_priv*,unsigned char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct lec_arp_table*) ; 
 struct lec_arp_table* FUNC5 (struct lec_priv*,unsigned char const*) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (struct lec_priv*,int /*<<< orphan*/ ,unsigned char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static struct atm_vcc *FUNC10(struct lec_priv *priv,
				       const unsigned char *mac_to_find, int is_rdesc,
				       struct lec_arp_table **ret_entry)
{
	unsigned long flags;
	struct lec_arp_table *entry;
	struct atm_vcc *found;

	if (mac_to_find[0] & 0x01) {
		switch (priv->lane_version) {
		case 1:
			return priv->mcast_vcc;
		case 2:	/* LANE2 wants arp for multicast addresses */
			if (!FUNC1(mac_to_find, bus_mac))
				return priv->mcast_vcc;
			break;
		default:
			break;
		}
	}

	FUNC8(&priv->lec_arp_lock, flags);
	entry = FUNC3(priv, mac_to_find);

	if (entry) {
		if (entry->status == ESI_FORWARD_DIRECT) {
			/* Connection Ok */
			entry->last_used = jiffies;
			FUNC4(entry);
			*ret_entry = entry;
			found = entry->vcc;
			goto out;
		}
		/*
		 * If the LE_ARP cache entry is still pending, reset count to 0
		 * so another LE_ARP request can be made for this frame.
		 */
		if (entry->status == ESI_ARP_PENDING) {
			entry->no_tries = 0;
		}
		/*
		 * Data direct VC not yet set up, check to see if the unknown
		 * frame count is greater than the limit. If the limit has
		 * not been reached, allow the caller to send packet to
		 * BUS.
		 */
		if (entry->status != ESI_FLUSH_PENDING &&
		    entry->packets_flooded <
		    priv->maximum_unknown_frame_count) {
			entry->packets_flooded++;
			FUNC6("LEC_ARP: Flooding..\n");
			found = priv->mcast_vcc;
			goto out;
		}
		/*
		 * We got here because entry->status == ESI_FLUSH_PENDING
		 * or BUS flood limit was reached for an entry which is
		 * in ESI_ARP_PENDING or ESI_VC_PENDING state.
		 */
		FUNC4(entry);
		*ret_entry = entry;
		FUNC6("lec: entry->status %d entry->vcc %p\n", entry->status,
			entry->vcc);
		found = NULL;
	} else {
		/* No matching entry was found */
		entry = FUNC5(priv, mac_to_find);
		FUNC6("LEC_ARP: Making entry\n");
		if (!entry) {
			found = priv->mcast_vcc;
			goto out;
		}
		FUNC2(priv, entry);
		/* We want arp-request(s) to be sent */
		entry->packets_flooded = 1;
		entry->status = ESI_ARP_PENDING;
		entry->no_tries = 1;
		entry->last_used = entry->timestamp = jiffies;
		entry->is_rdesc = is_rdesc;
		if (entry->is_rdesc)
			FUNC7(priv, l_rdesc_arp_xmt, mac_to_find, NULL,
				     NULL);
		else
			FUNC7(priv, l_arp_xmt, mac_to_find, NULL, NULL);
		entry->timer.expires = jiffies + (1 * HZ);
		entry->timer.function = lec_arp_expire_arp;
		FUNC0(&entry->timer);
		found = priv->mcast_vcc;
	}

out:
	FUNC9(&priv->lec_arp_lock, flags);
	return found;
}