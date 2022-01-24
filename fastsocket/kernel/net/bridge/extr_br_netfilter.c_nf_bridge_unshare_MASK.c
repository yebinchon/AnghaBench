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
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nf_bridge_info*,struct nf_bridge_info*,int) ; 
 struct nf_bridge_info* FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct nf_bridge_info*) ; 

__attribute__((used)) static inline struct nf_bridge_info *FUNC5(struct sk_buff *skb)
{
	struct nf_bridge_info *nf_bridge = skb->nf_bridge;

	if (FUNC0(&nf_bridge->use) > 1) {
		struct nf_bridge_info *tmp = FUNC3(skb);

		if (tmp) {
			FUNC2(tmp, nf_bridge, sizeof(struct nf_bridge_info));
			FUNC1(&tmp->use, 1);
			FUNC4(nf_bridge);
		}
		nf_bridge = tmp;
	}
	return nf_bridge;
}