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
struct net_bridge_mdb_htable {int dummy; } ;
struct net_bridge_mdb_entry {int dummy; } ;
struct br_ip {int dummy; } ;

/* Variables and functions */
 struct net_bridge_mdb_entry* FUNC0 (struct net_bridge_mdb_htable*,struct br_ip*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_bridge_mdb_htable*,struct br_ip*) ; 

__attribute__((used)) static struct net_bridge_mdb_entry *FUNC2(
	struct net_bridge_mdb_htable *mdb, struct br_ip *dst)
{
	if (!mdb)
		return NULL;

	return FUNC0(mdb, dst, FUNC1(mdb, dst));
}