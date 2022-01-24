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
struct net {int dummy; } ;
struct TYPE_3__ {scalar_t__ expires; int /*<<< orphan*/  unresolved; } ;
struct TYPE_4__ {TYPE_1__ unres; } ;
struct mfc6_cache {TYPE_2__ mfc_un; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int HZ ; 
 scalar_t__ jiffies ; 
 struct mfc6_cache* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mfc6_cache*,struct net*) ; 
 int /*<<< orphan*/  mrt_cachep ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct mfc6_cache *FUNC3(struct net *net)
{
	struct mfc6_cache *c = FUNC0(mrt_cachep, GFP_ATOMIC);
	if (c == NULL)
		return NULL;
	FUNC2(&c->mfc_un.unres.unresolved);
	c->mfc_un.unres.expires = jiffies + 10 * HZ;
	FUNC1(c, net);
	return c;
}