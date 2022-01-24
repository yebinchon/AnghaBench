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
struct clusterip_config {int /*<<< orphan*/  entries; int /*<<< orphan*/  refcount; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 struct clusterip_config* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  clusterip_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline struct clusterip_config *
FUNC4(__be32 clusterip, int entry)
{
	struct clusterip_config *c;

	FUNC2(&clusterip_lock);
	c = FUNC0(clusterip);
	if (!c) {
		FUNC3(&clusterip_lock);
		return NULL;
	}
	FUNC1(&c->refcount);
	if (entry)
		FUNC1(&c->entries);
	FUNC3(&clusterip_lock);

	return c;
}