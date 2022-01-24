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
struct sk_buff {int dummy; } ;
struct neighbour {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  ip; } ;
struct TYPE_3__ {int /*<<< orphan*/  number; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct neighbour*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  act_need ; 
 int /*<<< orphan*/  FUNC2 (char*,struct neighbour*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct neighbour *neigh, struct sk_buff *skb)
{
	FUNC2("clip_neigh_solicit (neigh %p, skb %p)\n", neigh, skb);
	FUNC3(act_need, FUNC1(neigh->dev)->number, FUNC0(neigh)->ip);
}