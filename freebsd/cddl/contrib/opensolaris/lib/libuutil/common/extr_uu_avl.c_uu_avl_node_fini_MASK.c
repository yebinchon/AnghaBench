#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  uap_name; scalar_t__ uap_debug; } ;
typedef  TYPE_1__ uu_avl_pool_t ;
typedef  int /*<<< orphan*/  uu_avl_node_t ;

/* Variables and functions */
 uintptr_t DEAD_MARKER ; 
 uintptr_t FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,void*,void*,void*,int /*<<< orphan*/ ) ; 

void
FUNC2(void *base, uu_avl_node_t *np, uu_avl_pool_t *pp)
{
	uintptr_t *na = (uintptr_t *)np;

	if (pp->uap_debug) {
		if (na[0] == DEAD_MARKER && na[1] == DEAD_MARKER) {
			FUNC1("uu_avl_node_fini(%p, %p, %p (\"%s\")): "
			    "node already finied\n",
			    base, (void *)np, (void *)pp, pp->uap_name);
		}
		if (na[0] != FUNC0(pp) || na[1] != 0) {
			FUNC1("uu_avl_node_fini(%p, %p, %p (\"%s\")): "
			    "node corrupt, in tree, or in different pool\n",
			    base, (void *)np, (void *)pp, pp->uap_name);
		}
	}

	na[0] = DEAD_MARKER;
	na[1] = DEAD_MARKER;
	na[2] = DEAD_MARKER;
}