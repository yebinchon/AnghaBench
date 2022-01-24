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
typedef  scalar_t__ uint32_t ;
struct jffs2_sb_info {scalar_t__ sector_size; int /*<<< orphan*/  free_size; int /*<<< orphan*/  dirty_size; int /*<<< orphan*/  used_size; int /*<<< orphan*/  unchecked_size; } ;
struct jffs2_raw_node_ref {scalar_t__ flash_offset; scalar_t__ __totlen; struct jffs2_raw_node_ref* next_in_ino; } ;
struct jffs2_inode_cache {struct jffs2_raw_node_ref* nodes; } ;
struct jffs2_eraseblock {scalar_t__ offset; scalar_t__ free_size; int /*<<< orphan*/  dirty_size; int /*<<< orphan*/  used_size; int /*<<< orphan*/  unchecked_size; struct jffs2_raw_node_ref* last_node; struct jffs2_raw_node_ref* first_node; int /*<<< orphan*/  allocated_refs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct jffs2_raw_node_ref*,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ REF_EMPTY_NODE ; 
 scalar_t__ REF_LINK_NODE ; 
#define  REF_NORMAL 131 
#define  REF_OBSOLETE 130 
#define  REF_PRISTINE 129 
#define  REF_UNCHECKED 128 
 int /*<<< orphan*/  FUNC3 (char*,struct jffs2_raw_node_ref*,scalar_t__,scalar_t__,...) ; 
 int FUNC4 (struct jffs2_raw_node_ref*) ; 
 scalar_t__ FUNC5 (struct jffs2_raw_node_ref*) ; 
 scalar_t__ FUNC6 (struct jffs2_sb_info*,struct jffs2_eraseblock*,struct jffs2_raw_node_ref*) ; 
 scalar_t__ FUNC7 (int) ; 

struct jffs2_raw_node_ref *FUNC8(struct jffs2_sb_info *c,
					       struct jffs2_eraseblock *jeb,
					       uint32_t ofs, uint32_t len,
					       struct jffs2_inode_cache *ic)
{
	struct jffs2_raw_node_ref *ref;

	FUNC1(!jeb->allocated_refs);
	jeb->allocated_refs--;

	ref = jeb->last_node;

	FUNC3("Last node at %p is (%08x,%p)\n", ref, ref->flash_offset,
		    ref->next_in_ino);

	while (ref->flash_offset != REF_EMPTY_NODE) {
		if (ref->flash_offset == REF_LINK_NODE)
			ref = ref->next_in_ino;
		else
			ref++;
	}

	FUNC3("New ref is %p (%08x becomes %08x,%p) len 0x%x\n", ref, 
		    ref->flash_offset, ofs, ref->next_in_ino, len);

	ref->flash_offset = ofs;

	if (!jeb->first_node) {
		jeb->first_node = ref;
		FUNC1(FUNC5(ref) != jeb->offset);
	} else if (FUNC7(FUNC5(ref) != jeb->offset + c->sector_size - jeb->free_size)) {
		uint32_t last_len = FUNC6(c, jeb, jeb->last_node);

		FUNC2("Adding new ref %p at (0x%08x-0x%08x) not immediately after previous (0x%08x-0x%08x)\n",
			    ref, FUNC5(ref), FUNC5(ref)+len,
			    FUNC5(jeb->last_node), 
			    FUNC5(jeb->last_node)+last_len);
		FUNC0();
	}
	jeb->last_node = ref;

	if (ic) {
		ref->next_in_ino = ic->nodes;
		ic->nodes = ref;
	} else {
		ref->next_in_ino = NULL;
	}

	switch(FUNC4(ref)) {
	case REF_UNCHECKED:
		c->unchecked_size += len;
		jeb->unchecked_size += len;
		break;

	case REF_NORMAL:
	case REF_PRISTINE:
		c->used_size += len;
		jeb->used_size += len;
		break;

	case REF_OBSOLETE:
		c->dirty_size += len;
		jeb->dirty_size += len;
		break;
	}
	c->free_size -= len;
	jeb->free_size -= len;

#ifdef TEST_TOTLEN
	/* Set (and test) __totlen field... for now */
	ref->__totlen = len;
	ref_totlen(c, jeb, ref);
#endif
	return ref;
}