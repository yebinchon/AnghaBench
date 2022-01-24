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
struct sk_buff {int dummy; } ;
struct napi_struct {int dummy; } ;
typedef  int /*<<< orphan*/  gro_result_t ;

/* Variables and functions */
 int /*<<< orphan*/  GRO_DROP ; 
 int /*<<< orphan*/  GRO_NORMAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 scalar_t__ FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct napi_struct*,struct vlan_group*,unsigned int,struct sk_buff*) ; 
 scalar_t__ FUNC4 (struct sk_buff*,struct vlan_group*,unsigned int) ; 

__attribute__((used)) static inline gro_result_t FUNC5(struct napi_struct *napi,
				                 struct vlan_group *grp,
				                 unsigned int vlan_tci,
						 struct sk_buff *skb)
{
	if (FUNC1(skb))
		return FUNC4(skb, grp, vlan_tci)
			? GRO_DROP : GRO_NORMAL;

	FUNC2(skb);

	return FUNC0(FUNC3(napi, grp, vlan_tci, skb), skb);
}