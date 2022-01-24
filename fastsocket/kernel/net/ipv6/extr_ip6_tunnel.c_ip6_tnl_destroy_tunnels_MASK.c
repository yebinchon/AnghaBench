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
struct ip6_tnl_net {struct ip6_tnl** tnls_wc; struct ip6_tnl** tnls_r_l; } ;
struct ip6_tnl {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int HASH_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct ip6_tnl_net *ip6n)
{
	int h;
	struct ip6_tnl *t;

	for (h = 0; h < HASH_SIZE; h++) {
		while ((t = ip6n->tnls_r_l[h]) != NULL)
			FUNC0(t->dev);
	}

	t = ip6n->tnls_wc[0];
	FUNC0(t->dev);
}