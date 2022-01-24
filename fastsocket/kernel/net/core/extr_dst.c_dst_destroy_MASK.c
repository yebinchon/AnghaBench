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
struct neighbour {int dummy; } ;
struct hh_cache {int /*<<< orphan*/  hh_refcnt; } ;
struct dst_entry {int flags; int /*<<< orphan*/  __refcnt; TYPE_1__* ops; scalar_t__ dev; struct neighbour* neighbour; struct hh_cache* hh; struct dst_entry* child; } ;
struct TYPE_2__ {int /*<<< orphan*/  kmem_cachep; int /*<<< orphan*/  (* destroy ) (struct dst_entry*) ;int /*<<< orphan*/  entries; } ;

/* Variables and functions */
 int DST_NOHASH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  dst_total ; 
 int /*<<< orphan*/  FUNC3 (struct hh_cache*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct dst_entry*) ; 
 int /*<<< orphan*/  FUNC5 (struct neighbour*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct dst_entry*) ; 

struct dst_entry *FUNC8(struct dst_entry * dst)
{
	struct dst_entry *child;
	struct neighbour *neigh;
	struct hh_cache *hh;

	FUNC6();

again:
	neigh = dst->neighbour;
	hh = dst->hh;
	child = dst->child;

	dst->hh = NULL;
	if (hh && FUNC1(&hh->hh_refcnt))
		FUNC3(hh);

	if (neigh) {
		dst->neighbour = NULL;
		FUNC5(neigh);
	}

	FUNC0(&dst->ops->entries);

	if (dst->ops->destroy)
		dst->ops->destroy(dst);
	if (dst->dev)
		FUNC2(dst->dev);
#if RT_CACHE_DEBUG >= 2
	atomic_dec(&dst_total);
#endif
	FUNC4(dst->ops->kmem_cachep, dst);

	dst = child;
	if (dst) {
		int nohash = dst->flags & DST_NOHASH;

		if (FUNC1(&dst->__refcnt)) {
			/* We were real parent of this dst, so kill child. */
			if (nohash)
				goto again;
		} else {
			/* Child is still referenced, return it for freeing. */
			if (nohash)
				return dst;
			/* Child is still in his hash table */
		}
	}
	return NULL;
}