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
struct neighbour {int nud_state; int /*<<< orphan*/  lock; int /*<<< orphan*/  ha; TYPE_1__* dev; void* updated; void* used; } ;
struct endnode_hello_message {int /*<<< orphan*/  blksize; int /*<<< orphan*/  id; } ;
struct dn_neigh {int flags; scalar_t__ priority; int /*<<< orphan*/  blksize; } ;
typedef  int /*<<< orphan*/  __le16 ;
struct TYPE_4__ {int /*<<< orphan*/  h_source; } ;
struct TYPE_3__ {scalar_t__ type; } ;

/* Variables and functions */
 scalar_t__ ARPHRD_ETHER ; 
 int DN_NDFLAG_R1 ; 
 int DN_NDFLAG_R2 ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int NUD_PERMANENT ; 
 struct neighbour* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dn_neigh_table ; 
 TYPE_2__* FUNC2 (struct sk_buff*) ; 
 void* jiffies ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct neighbour*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9(struct sk_buff *skb)
{
	struct endnode_hello_message *msg = (struct endnode_hello_message *)skb->data;
	struct neighbour *neigh;
	struct dn_neigh *dn;
	__le16 src;

	src = FUNC1(msg->id);

	neigh = FUNC0(&dn_neigh_table, &src, skb->dev, 1);

	dn = (struct dn_neigh *)neigh;

	if (neigh) {
		FUNC7(&neigh->lock);

		neigh->used = jiffies;

		if (!(neigh->nud_state & NUD_PERMANENT)) {
			neigh->updated = jiffies;

			if (neigh->dev->type == ARPHRD_ETHER)
				FUNC5(neigh->ha, &FUNC2(skb)->h_source, ETH_ALEN);
			dn->flags   &= ~(DN_NDFLAG_R1 | DN_NDFLAG_R2);
			dn->blksize  = FUNC4(msg->blksize);
			dn->priority = 0;
		}

		FUNC8(&neigh->lock);
		FUNC6(neigh);
	}

	FUNC3(skb);
	return 0;
}