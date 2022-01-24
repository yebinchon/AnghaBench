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
struct kmem_cache {TYPE_1__** nodelists; } ;
struct array_cache {scalar_t__ avail; int /*<<< orphan*/  entry; } ;
struct TYPE_2__ {int /*<<< orphan*/  list_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 struct array_cache* FUNC1 (struct kmem_cache*) ; 
 int /*<<< orphan*/  FUNC2 (struct kmem_cache*,int /*<<< orphan*/ ,scalar_t__,int) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(void *arg)
{
	struct kmem_cache *cachep = arg;
	struct array_cache *ac;
	int node = FUNC3();

	FUNC0();
	ac = FUNC1(cachep);
	FUNC4(&cachep->nodelists[node]->list_lock);
	FUNC2(cachep, ac->entry, ac->avail, node);
	FUNC5(&cachep->nodelists[node]->list_lock);
	ac->avail = 0;
}