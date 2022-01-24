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
struct net_bridge_mdb_htable {int max; int ver; int /*<<< orphan*/  rcu; struct net_bridge_mdb_htable* mhash; int /*<<< orphan*/  secret; int /*<<< orphan*/  size; struct net_bridge_mdb_htable* old; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int FUNC0 (struct net_bridge_mdb_htable*,struct net_bridge_mdb_htable*,int) ; 
 int /*<<< orphan*/  br_mdb_free ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct net_bridge_mdb_htable*) ; 
 struct net_bridge_mdb_htable* FUNC4 (int,int /*<<< orphan*/ ) ; 
 struct net_bridge_mdb_htable* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct net_bridge_mdb_htable*,struct net_bridge_mdb_htable*) ; 

__attribute__((used)) static int FUNC7(struct net_bridge_mdb_htable **mdbp, int max,
			 int elasticity)
{
	struct net_bridge_mdb_htable *old = *mdbp;
	struct net_bridge_mdb_htable *mdb;
	int err;

	mdb = FUNC4(sizeof(*mdb), GFP_ATOMIC);
	if (!mdb)
		return -ENOMEM;

	mdb->max = max;
	mdb->old = old;

	mdb->mhash = FUNC5(max * sizeof(*mdb->mhash), GFP_ATOMIC);
	if (!mdb->mhash) {
		FUNC3(mdb);
		return -ENOMEM;
	}

	mdb->size = old ? old->size : 0;
	mdb->ver = old ? old->ver ^ 1 : 0;

	if (!old || elasticity)
		FUNC2(&mdb->secret, sizeof(mdb->secret));
	else
		mdb->secret = old->secret;

	if (!old)
		goto out;

	err = FUNC0(mdb, old, elasticity);
	if (err) {
		FUNC3(mdb->mhash);
		FUNC3(mdb);
		return err;
	}

	FUNC1(&mdb->rcu, br_mdb_free);

out:
	FUNC6(*mdbp, mdb);

	return 0;
}