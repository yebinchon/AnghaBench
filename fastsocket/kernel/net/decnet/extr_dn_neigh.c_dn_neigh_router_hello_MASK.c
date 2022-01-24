#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int /*<<< orphan*/  dev; scalar_t__ data; } ;
struct rtnode_hello_message {scalar_t__ priority; int iinfo; int /*<<< orphan*/  blksize; int /*<<< orphan*/  id; } ;
struct neighbour {int nud_state; int /*<<< orphan*/  lock; int /*<<< orphan*/  ha; TYPE_1__* dev; void* updated; void* used; } ;
struct dn_neigh {int blksize; scalar_t__ priority; int /*<<< orphan*/  flags; } ;
struct dn_dev {scalar_t__ router; } ;
typedef  int /*<<< orphan*/  __le16 ;
struct TYPE_4__ {int /*<<< orphan*/  h_source; } ;
struct TYPE_3__ {scalar_t__ type; scalar_t__ dn_ptr; } ;

/* Variables and functions */
 scalar_t__ ARPHRD_ETHER ; 
 int /*<<< orphan*/  DN_NDFLAG_P3 ; 
 int /*<<< orphan*/  DN_NDFLAG_R1 ; 
 int /*<<< orphan*/  DN_NDFLAG_R2 ; 
#define  DN_RT_INFO_L1RT 129 
#define  DN_RT_INFO_L2RT 128 
 int DN_RT_INFO_TYPE ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int NUD_PERMANENT ; 
 struct neighbour* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  decnet_address ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dn_neigh_table ; 
 TYPE_2__* FUNC2 (struct sk_buff*) ; 
 void* jiffies ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct neighbour*) ; 
 int /*<<< orphan*/  FUNC7 (struct neighbour*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 struct neighbour* FUNC10 (scalar_t__*,scalar_t__) ; 

int FUNC11(struct sk_buff *skb)
{
	struct rtnode_hello_message *msg = (struct rtnode_hello_message *)skb->data;

	struct neighbour *neigh;
	struct dn_neigh *dn;
	struct dn_dev *dn_db;
	__le16 src;

	src = FUNC1(msg->id);

	neigh = FUNC0(&dn_neigh_table, &src, skb->dev, 1);

	dn = (struct dn_neigh *)neigh;

	if (neigh) {
		FUNC8(&neigh->lock);

		neigh->used = jiffies;
		dn_db = (struct dn_dev *)neigh->dev->dn_ptr;

		if (!(neigh->nud_state & NUD_PERMANENT)) {
			neigh->updated = jiffies;

			if (neigh->dev->type == ARPHRD_ETHER)
				FUNC5(neigh->ha, &FUNC2(skb)->h_source, ETH_ALEN);

			dn->blksize  = FUNC4(msg->blksize);
			dn->priority = msg->priority;

			dn->flags &= ~DN_NDFLAG_P3;

			switch(msg->iinfo & DN_RT_INFO_TYPE) {
				case DN_RT_INFO_L1RT:
					dn->flags &=~DN_NDFLAG_R2;
					dn->flags |= DN_NDFLAG_R1;
					break;
				case DN_RT_INFO_L2RT:
					dn->flags |= DN_NDFLAG_R2;
			}
		}

		/* Only use routers in our area */
		if ((FUNC4(src)>>10) == (FUNC4((decnet_address))>>10)) {
			if (!dn_db->router) {
				dn_db->router = FUNC6(neigh);
			} else {
				if (msg->priority > ((struct dn_neigh *)dn_db->router)->priority)
					FUNC7(FUNC10(&dn_db->router, FUNC6(neigh)));
			}
		}
		FUNC9(&neigh->lock);
		FUNC7(neigh);
	}

	FUNC3(skb);
	return 0;
}