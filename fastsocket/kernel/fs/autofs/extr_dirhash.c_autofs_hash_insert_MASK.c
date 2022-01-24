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
struct autofs_dirhash {struct autofs_dir_ent** h; } ;
struct autofs_dir_ent {struct autofs_dir_ent* next; struct autofs_dir_ent** back; scalar_t__ hash; scalar_t__ dentry; int /*<<< orphan*/  len; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 unsigned int AUTOFS_HASH_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct autofs_dirhash*,struct autofs_dir_ent*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

void FUNC4(struct autofs_dirhash *dh, struct autofs_dir_ent *ent)
{
	struct autofs_dir_ent **dhnp;

	FUNC0(("autofs_hash_insert: hash = 0x%08x, name = ", ent->hash));
	FUNC2(ent->name,ent->len);

	FUNC1(dh,ent);
	if (ent->dentry)
		FUNC3(ent->dentry);

	dhnp = &dh->h[(unsigned) ent->hash % AUTOFS_HASH_SIZE];
	ent->next = *dhnp;
	ent->back = dhnp;
	*dhnp = ent;
	if ( ent->next )
		ent->next->back = &(ent->next);
}