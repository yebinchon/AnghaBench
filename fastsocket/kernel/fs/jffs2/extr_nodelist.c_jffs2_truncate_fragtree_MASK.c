#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct rb_root {int dummy; } ;
struct jffs2_sb_info {int dummy; } ;
struct jffs2_node_frag {scalar_t__ ofs; scalar_t__ size; TYPE_1__* node; } ;
struct TYPE_4__ {int flash_offset; } ;
struct TYPE_3__ {TYPE_2__* raw; } ;

/* Variables and functions */
 int PAGE_CACHE_SIZE ; 
 int REF_PRISTINE ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct jffs2_node_frag*,struct rb_root*) ; 
 struct jffs2_node_frag* FUNC3 (struct rb_root*) ; 
 struct jffs2_node_frag* FUNC4 (struct jffs2_node_frag*) ; 
 struct jffs2_node_frag* FUNC5 (struct rb_root*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct jffs2_sb_info*,struct jffs2_node_frag*) ; 
 int FUNC7 (TYPE_2__*) ; 

uint32_t FUNC8(struct jffs2_sb_info *c, struct rb_root *list, uint32_t size)
{
	struct jffs2_node_frag *frag = FUNC5(list, size);

	FUNC0("truncating fragtree to 0x%08x bytes\n", size);

	/* We know frag->ofs <= size. That's what lookup does for us */
	if (frag && frag->ofs != size) {
		if (frag->ofs+frag->size > size) {
			frag->size = size - frag->ofs;
		}
		frag = FUNC4(frag);
	}
	while (frag && frag->ofs >= size) {
		struct jffs2_node_frag *next = FUNC4(frag);

		FUNC2(frag, list);
		FUNC6(c, frag);
		frag = next;
	}

	if (size == 0)
		return 0;

	frag = FUNC3(list);

	/* Sanity check for truncation to longer than we started with... */
	if (!frag)
		return 0;
	if (frag->ofs + frag->size < size)
		return frag->ofs + frag->size;

	/* If the last fragment starts at the RAM page boundary, it is
	 * REF_PRISTINE irrespective of its size. */
	if (frag->node && (frag->ofs & (PAGE_CACHE_SIZE - 1)) == 0) {
		FUNC1("marking the last fragment 0x%08x-0x%08x REF_PRISTINE.\n",
			frag->ofs, frag->ofs + frag->size);
		frag->node->raw->flash_offset = FUNC7(frag->node->raw) | REF_PRISTINE;
	}
	return size;
}