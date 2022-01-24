#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_5__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uu_compare_fn_t ;
struct TYPE_7__ {void* ua_prev_enc; void* ua_next_enc; } ;
struct TYPE_6__ {size_t uap_nodeoffset; size_t uap_objsize; int uap_debug; struct TYPE_6__* uap_next; struct TYPE_6__* uap_prev; TYPE_5__ uap_null_avl; int /*<<< orphan*/  uap_lock; scalar_t__ uap_last_index; int /*<<< orphan*/ * uap_cmp; int /*<<< orphan*/  uap_name; } ;
typedef  TYPE_1__ uu_avl_pool_t ;
typedef  int /*<<< orphan*/  uu_avl_node_t ;
typedef  int uint32_t ;

/* Variables and functions */
 int UU_AVL_POOL_DEBUG ; 
 int /*<<< orphan*/  UU_ERROR_INVALID_ARGUMENT ; 
 int /*<<< orphan*/  UU_ERROR_NO_MEMORY ; 
 int /*<<< orphan*/  UU_ERROR_UNKNOWN_FLAG ; 
 int /*<<< orphan*/  UU_NAME_DOMAIN ; 
 void* FUNC0 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  uu_apool_list_lock ; 
 int FUNC5 (char const*,int /*<<< orphan*/ ) ; 
 TYPE_1__ uu_null_apool ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC7 (int) ; 

uu_avl_pool_t *
FUNC8(const char *name, size_t objsize, size_t nodeoffset,
    uu_compare_fn_t *compare_func, uint32_t flags)
{
	uu_avl_pool_t *pp, *next, *prev;

	if (name == NULL ||
	    FUNC5(name, UU_NAME_DOMAIN) == -1 ||
	    nodeoffset + sizeof (uu_avl_node_t) > objsize ||
	    compare_func == NULL) {
		FUNC6(UU_ERROR_INVALID_ARGUMENT);
		return (NULL);
	}

	if (flags & ~UU_AVL_POOL_DEBUG) {
		FUNC6(UU_ERROR_UNKNOWN_FLAG);
		return (NULL);
	}

	pp = FUNC7(sizeof (uu_avl_pool_t));
	if (pp == NULL) {
		FUNC6(UU_ERROR_NO_MEMORY);
		return (NULL);
	}

	(void) FUNC4(pp->uap_name, name, sizeof (pp->uap_name));
	pp->uap_nodeoffset = nodeoffset;
	pp->uap_objsize = objsize;
	pp->uap_cmp = compare_func;
	if (flags & UU_AVL_POOL_DEBUG)
		pp->uap_debug = 1;
	pp->uap_last_index = 0;

	(void) FUNC1(&pp->uap_lock, NULL);

	pp->uap_null_avl.ua_next_enc = FUNC0(&pp->uap_null_avl);
	pp->uap_null_avl.ua_prev_enc = FUNC0(&pp->uap_null_avl);

	(void) FUNC2(&uu_apool_list_lock);
	pp->uap_next = next = &uu_null_apool;
	pp->uap_prev = prev = next->uap_prev;
	next->uap_prev = pp;
	prev->uap_next = pp;
	(void) FUNC3(&uu_apool_list_lock);

	return (pp);
}