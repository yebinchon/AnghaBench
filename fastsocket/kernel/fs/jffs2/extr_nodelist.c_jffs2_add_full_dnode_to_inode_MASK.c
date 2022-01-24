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
struct jffs2_sb_info {int dummy; } ;
struct jffs2_node_frag {int ofs; int size; TYPE_1__* node; } ;
struct jffs2_inode_info {int /*<<< orphan*/  fragtree; } ;
struct jffs2_full_dnode {int /*<<< orphan*/  raw; scalar_t__ size; scalar_t__ ofs; } ;
struct TYPE_2__ {int frags; int /*<<< orphan*/  raw; } ;

/* Variables and functions */
 int ENOMEM ; 
 int PAGE_CACHE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,scalar_t__,int /*<<< orphan*/ ,struct jffs2_node_frag*) ; 
 struct jffs2_node_frag* FUNC1 (struct jffs2_node_frag*) ; 
 struct jffs2_node_frag* FUNC2 (struct jffs2_node_frag*) ; 
 int FUNC3 (struct jffs2_sb_info*,int /*<<< orphan*/ *,struct jffs2_node_frag*) ; 
 int /*<<< orphan*/  FUNC4 (struct jffs2_inode_info*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct jffs2_node_frag* FUNC6 (struct jffs2_full_dnode*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int) ; 

int FUNC9(struct jffs2_sb_info *c, struct jffs2_inode_info *f, struct jffs2_full_dnode *fn)
{
	int ret;
	struct jffs2_node_frag *newfrag;

	if (FUNC8(!fn->size))
		return 0;

	newfrag = FUNC6(fn, fn->ofs, fn->size);
	if (FUNC8(!newfrag))
		return -ENOMEM;
	newfrag->node->frags = 1;

	FUNC0("adding node %#04x-%#04x @0x%08x on flash, newfrag *%p\n",
		  fn->ofs, fn->ofs+fn->size, FUNC7(fn->raw), newfrag);

	ret = FUNC3(c, &f->fragtree, newfrag);
	if (FUNC8(ret))
		return ret;

	/* If we now share a page with other nodes, mark either previous
	   or next node REF_NORMAL, as appropriate.  */
	if (newfrag->ofs & (PAGE_CACHE_SIZE-1)) {
		struct jffs2_node_frag *prev = FUNC2(newfrag);

		FUNC5(fn->raw);
		/* If we don't start at zero there's _always_ a previous */
		if (prev->node)
			FUNC5(prev->node->raw);
	}

	if ((newfrag->ofs+newfrag->size) & (PAGE_CACHE_SIZE-1)) {
		struct jffs2_node_frag *next = FUNC1(newfrag);

		if (next) {
			FUNC5(fn->raw);
			if (next->node)
				FUNC5(next->node->raw);
		}
	}
	FUNC4(f);

	return 0;
}