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
struct net_device {scalar_t__ addr_len; int /*<<< orphan*/  dev_addr; scalar_t__ hard_header_len; } ;
struct ipx_interface {int /*<<< orphan*/  refcnt; int /*<<< orphan*/  if_sklist_lock; int /*<<< orphan*/ * if_node; } ;
struct datalink_proto {scalar_t__ header_length; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
#define  ETH_P_802_2 131 
#define  ETH_P_802_3 130 
#define  ETH_P_IPX 129 
#define  ETH_P_SNAP 128 
 scalar_t__ IPX_NODE_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 struct ipx_interface* FUNC2 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct datalink_proto*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct ipx_interface*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 struct datalink_proto* p8022_datalink ; 
 struct datalink_proto* p8023_datalink ; 
 struct datalink_proto* pEII_datalink ; 
 struct datalink_proto* pSNAP_datalink ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct ipx_interface *FUNC8(struct net_device *dev,
						__be16 dlink_type)
{
	struct ipx_interface *intrfc = NULL;
	struct datalink_proto *datalink;

	if (!dev)
		goto out;

	/* Check addresses are suitable */
	if (dev->addr_len > IPX_NODE_LEN)
		goto out;

	switch (FUNC6(dlink_type)) {
	case ETH_P_IPX:		datalink = pEII_datalink;	break;
	case ETH_P_802_2:	datalink = p8022_datalink;	break;
	case ETH_P_SNAP:	datalink = pSNAP_datalink;	break;
	case ETH_P_802_3:	datalink = p8023_datalink;	break;
	default:		goto out;
	}

	intrfc = FUNC2(dev, 0, dlink_type, datalink, 0,
				dev->hard_header_len + datalink->header_length);

	if (intrfc) {
		FUNC5(intrfc->if_node, 0, IPX_NODE_LEN);
		FUNC4((char *)&(intrfc->if_node[IPX_NODE_LEN-dev->addr_len]),
			dev->dev_addr, dev->addr_len);
		FUNC7(&intrfc->if_sklist_lock);
		FUNC0(&intrfc->refcnt, 1);
		FUNC3(intrfc);
		FUNC1(dev);
	}

out:
	return intrfc;
}