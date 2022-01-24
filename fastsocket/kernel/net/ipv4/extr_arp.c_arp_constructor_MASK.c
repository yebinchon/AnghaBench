#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct net_device {int type; int flags; TYPE_1__* header_ops; int /*<<< orphan*/  addr_len; int /*<<< orphan*/  broadcast; int /*<<< orphan*/  dev_addr; } ;
struct neighbour {int nud_state; TYPE_2__* ops; int /*<<< orphan*/  output; int /*<<< orphan*/  ha; int /*<<< orphan*/  type; int /*<<< orphan*/  parms; struct net_device* dev; scalar_t__ primary_key; } ;
struct neigh_parms {int dummy; } ;
struct in_device {struct neigh_parms* arp_parms; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_7__ {int /*<<< orphan*/  output; int /*<<< orphan*/  connected_output; int /*<<< orphan*/  queue_xmit; } ;
struct TYPE_6__ {scalar_t__ cache; } ;

/* Variables and functions */
#define  ARPHRD_AX25 130 
#define  ARPHRD_NETROM 129 
#define  ARPHRD_ROSE 128 
 int EINVAL ; 
 int IFF_LOOPBACK ; 
 int IFF_NOARP ; 
 int IFF_POINTOPOINT ; 
 void* NUD_NOARP ; 
 int NUD_VALID ; 
 int /*<<< orphan*/  RTN_BROADCAST ; 
 int /*<<< orphan*/  RTN_MULTICAST ; 
 struct in_device* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__ arp_broken_ops ; 
 TYPE_2__ arp_direct_ops ; 
 TYPE_2__ arp_generic_ops ; 
 TYPE_2__ arp_hh_ops ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct neigh_parms*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static int FUNC9(struct neighbour *neigh)
{
	__be32 addr = *(__be32*)neigh->primary_key;
	struct net_device *dev = neigh->dev;
	struct in_device *in_dev;
	struct neigh_parms *parms;

	FUNC7();
	in_dev = FUNC0(dev);
	if (in_dev == NULL) {
		FUNC8();
		return -EINVAL;
	}

	neigh->type = FUNC4(FUNC3(dev), addr);

	parms = in_dev->arp_parms;
	FUNC1(neigh->parms);
	neigh->parms = FUNC6(parms);
	FUNC8();

	if (!dev->header_ops) {
		neigh->nud_state = NUD_NOARP;
		neigh->ops = &arp_direct_ops;
		neigh->output = neigh->ops->queue_xmit;
	} else {
		/* Good devices (checked by reading texts, but only Ethernet is
		   tested)

		   ARPHRD_ETHER: (ethernet, apfddi)
		   ARPHRD_FDDI: (fddi)
		   ARPHRD_IEEE802: (tr)
		   ARPHRD_METRICOM: (strip)
		   ARPHRD_ARCNET:
		   etc. etc. etc.

		   ARPHRD_IPDDP will also work, if author repairs it.
		   I did not it, because this driver does not work even
		   in old paradigm.
		 */

#if 1
		/* So... these "amateur" devices are hopeless.
		   The only thing, that I can say now:
		   It is very sad that we need to keep ugly obsolete
		   code to make them happy.

		   They should be moved to more reasonable state, now
		   they use rebuild_header INSTEAD OF hard_start_xmit!!!
		   Besides that, they are sort of out of date
		   (a lot of redundant clones/copies, useless in 2.1),
		   I wonder why people believe that they work.
		 */
		switch (dev->type) {
		default:
			break;
		case ARPHRD_ROSE:
#if defined(CONFIG_AX25) || defined(CONFIG_AX25_MODULE)
		case ARPHRD_AX25:
#if defined(CONFIG_NETROM) || defined(CONFIG_NETROM_MODULE)
		case ARPHRD_NETROM:
#endif
			neigh->ops = &arp_broken_ops;
			neigh->output = neigh->ops->output;
			return 0;
#endif
		;}
#endif
		if (neigh->type == RTN_MULTICAST) {
			neigh->nud_state = NUD_NOARP;
			FUNC2(addr, neigh->ha, dev, 1);
		} else if (dev->flags&(IFF_NOARP|IFF_LOOPBACK)) {
			neigh->nud_state = NUD_NOARP;
			FUNC5(neigh->ha, dev->dev_addr, dev->addr_len);
		} else if (neigh->type == RTN_BROADCAST || dev->flags&IFF_POINTOPOINT) {
			neigh->nud_state = NUD_NOARP;
			FUNC5(neigh->ha, dev->broadcast, dev->addr_len);
		}

		if (dev->header_ops->cache)
			neigh->ops = &arp_hh_ops;
		else
			neigh->ops = &arp_generic_ops;

		if (neigh->nud_state&NUD_VALID)
			neigh->output = neigh->ops->connected_output;
		else
			neigh->output = neigh->ops->output;
	}
	return 0;
}