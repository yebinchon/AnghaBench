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
struct jffs2_raw_node_ref {struct jffs2_raw_node_ref* next_in_ino; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct jffs2_raw_node_ref*) ; 
 int /*<<< orphan*/  FUNC2 (struct jffs2_raw_node_ref*) ; 

__attribute__((used)) static struct jffs2_raw_node_ref *FUNC3(struct jffs2_raw_node_ref *ref)
{
	while (ref && ref->next_in_ino) {
		if (!FUNC1(ref))
			return ref;
		FUNC0("node at 0x%08x is obsoleted. Ignoring.\n", FUNC2(ref));
		ref = ref->next_in_ino;
	}
	return NULL;
}