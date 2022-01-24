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
struct sk_buff {struct nf_bridge_info* nf_bridge; } ;
struct nf_bridge_info {int /*<<< orphan*/  use; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 struct nf_bridge_info* FUNC1 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct nf_bridge_info*) ; 

__attribute__((used)) static inline struct nf_bridge_info *FUNC3(struct sk_buff *skb)
{
	skb->nf_bridge = FUNC1(sizeof(struct nf_bridge_info), GFP_ATOMIC);
	if (FUNC2(skb->nf_bridge))
		FUNC0(&(skb->nf_bridge->use), 1);

	return skb->nf_bridge;
}