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
typedef  void* uint32_t ;
struct jffs2_node_frag {struct jffs2_full_dnode* node; void* size; void* ofs; } ;
struct jffs2_full_dnode {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct jffs2_node_frag* FUNC1 () ; 
 scalar_t__ FUNC2 (struct jffs2_node_frag*) ; 

__attribute__((used)) static struct jffs2_node_frag * FUNC3(struct jffs2_full_dnode *fn, uint32_t ofs, uint32_t size)
{
	struct jffs2_node_frag *newfrag;

	newfrag = FUNC1();
	if (FUNC2(newfrag)) {
		newfrag->ofs = ofs;
		newfrag->size = size;
		newfrag->node = fn;
	} else {
		FUNC0("cannot allocate a jffs2_node_frag object\n");
	}

	return newfrag;
}