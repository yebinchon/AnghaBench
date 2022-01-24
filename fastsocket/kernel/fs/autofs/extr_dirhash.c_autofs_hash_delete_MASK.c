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
struct autofs_dir_ent {struct autofs_dir_ent* name; scalar_t__ dentry; TYPE_1__** back; TYPE_1__* next; } ;
struct TYPE_2__ {struct TYPE_2__** back; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct autofs_dir_ent*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct autofs_dir_ent*) ; 

void FUNC3(struct autofs_dir_ent *ent)
{
	*(ent->back) = ent->next;
	if ( ent->next )
		ent->next->back = ent->back;

	FUNC0(ent);

	if ( ent->dentry )
		FUNC1(ent->dentry);
	FUNC2(ent->name);
	FUNC2(ent);
}