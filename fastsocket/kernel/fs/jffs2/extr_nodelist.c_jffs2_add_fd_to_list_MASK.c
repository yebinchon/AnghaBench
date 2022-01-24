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
struct jffs2_sb_info {int dummy; } ;
struct jffs2_full_dirent {scalar_t__ nhash; scalar_t__ version; struct jffs2_full_dirent* next; scalar_t__ raw; int /*<<< orphan*/  ino; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct jffs2_full_dirent*) ; 
 int /*<<< orphan*/  FUNC2 (struct jffs2_sb_info*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(struct jffs2_sb_info *c, struct jffs2_full_dirent *new, struct jffs2_full_dirent **list)
{
	struct jffs2_full_dirent **prev = list;

	FUNC0("add dirent \"%s\", ino #%u\n", new->name, new->ino);

	while ((*prev) && (*prev)->nhash <= new->nhash) {
		if ((*prev)->nhash == new->nhash && !FUNC3((*prev)->name, new->name)) {
			/* Duplicate. Free one */
			if (new->version < (*prev)->version) {
				FUNC0("Eep! Marking new dirent node obsolete, old is \"%s\", ino #%u\n",
					(*prev)->name, (*prev)->ino);
				FUNC2(c, new->raw);
				FUNC1(new);
			} else {
				FUNC0("marking old dirent \"%s\", ino #%u obsolete\n",
					(*prev)->name, (*prev)->ino);
				new->next = (*prev)->next;
				/* It may have been a 'placeholder' deletion dirent, 
				   if jffs2_can_mark_obsolete() (see jffs2_do_unlink()) */
				if ((*prev)->raw)
					FUNC2(c, ((*prev)->raw));
				FUNC1(*prev);
				*prev = new;
			}
			return;
		}
		prev = &((*prev)->next);
	}
	new->next = *prev;
	*prev = new;
}