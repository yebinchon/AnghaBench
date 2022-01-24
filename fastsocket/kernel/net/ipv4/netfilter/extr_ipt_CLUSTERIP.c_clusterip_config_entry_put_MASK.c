#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct clusterip_config {TYPE_1__* pde; int /*<<< orphan*/  dev; int /*<<< orphan*/  clustermac; int /*<<< orphan*/  list; int /*<<< orphan*/  entries; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  clusterip_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void
FUNC7(struct clusterip_config *c)
{
	FUNC5(&clusterip_lock);
	if (FUNC0(&c->entries)) {
		FUNC3(&c->list);
		FUNC6(&clusterip_lock);

		FUNC1(c->dev, c->clustermac, ETH_ALEN, 0);
		FUNC2(c->dev);

		/* In case anyone still accesses the file, the open/close
		 * functions are also incrementing the refcount on their own,
		 * so it's safe to remove the entry even if it's in use. */
#ifdef CONFIG_PROC_FS
		remove_proc_entry(c->pde->name, c->pde->parent);
#endif
		return;
	}
	FUNC6(&clusterip_lock);
}