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
struct TYPE_3__ {int /*<<< orphan*/  minvif; } ;
struct TYPE_4__ {TYPE_1__ res; } ;
struct mfc6_cache {TYPE_2__ mfc_un; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MAXMIFS ; 
 struct mfc6_cache* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mfc6_cache*,struct net*) ; 
 int /*<<< orphan*/  mrt_cachep ; 

__attribute__((used)) static struct mfc6_cache *FUNC2(struct net *net)
{
	struct mfc6_cache *c = FUNC0(mrt_cachep, GFP_KERNEL);
	if (c == NULL)
		return NULL;
	c->mfc_un.res.minvif = MAXMIFS;
	FUNC1(c, net);
	return c;
}