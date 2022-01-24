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
struct kmem_cache {int size; int /*<<< orphan*/  flags; int /*<<< orphan*/  (* ctor ) (void*) ;int /*<<< orphan*/  align; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int PAGE_SIZE ; 
 int SLOB_UNIT ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  _RET_IP_ ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (void*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 void* FUNC4 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,void*,int,int,int /*<<< orphan*/ ,int) ; 

void *FUNC7(struct kmem_cache *c, gfp_t flags, int node)
{
	void *b;

	if (c->size < PAGE_SIZE) {
		b = FUNC3(c->size, flags, c->align, node);
		FUNC6(_RET_IP_, b, c->size,
					    FUNC0(c->size) * SLOB_UNIT,
					    flags, node);
	} else {
		b = FUNC4(flags, FUNC1(c->size), node);
		FUNC6(_RET_IP_, b, c->size,
					    PAGE_SIZE << FUNC1(c->size),
					    flags, node);
	}

	if (c->ctor)
		c->ctor(b);

	FUNC2(b, c->size, 1, c->flags, flags);
	return b;
}