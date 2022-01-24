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
struct vlan_group {int dummy; } ;
struct sk_buff {int /*<<< orphan*/  dev; int /*<<< orphan*/  protocol; } ;
struct napi_struct {int dummy; } ;
typedef  int /*<<< orphan*/  gro_result_t ;

/* Variables and functions */
 int /*<<< orphan*/  GRO_DROP ; 
 int /*<<< orphan*/  GRO_NORMAL ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct napi_struct*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC2 (struct napi_struct*) ; 
 scalar_t__ FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct napi_struct*,struct vlan_group*,unsigned int,struct sk_buff*) ; 
 scalar_t__ FUNC5 (struct sk_buff*,struct vlan_group*,unsigned int) ; 

__attribute__((used)) static inline gro_result_t FUNC6(struct napi_struct *napi,
					       struct vlan_group *grp,
					       unsigned int vlan_tci)
{
	struct sk_buff *skb = FUNC2(napi);

	if (!skb)
		return GRO_DROP;

	if (FUNC3(skb)) {
		skb->protocol = FUNC0(skb, skb->dev);
		return FUNC5(skb, grp, vlan_tci)
			? GRO_DROP : GRO_NORMAL;
	}

	return FUNC1(napi, skb,
				 FUNC4(napi, grp, vlan_tci, skb));
}