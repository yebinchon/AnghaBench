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
struct menu {int /*<<< orphan*/ * prompt; struct menu* next; struct menu* list; int /*<<< orphan*/  lineno; TYPE_2__* file; TYPE_1__* sym; } ;
struct TYPE_4__ {char* name; } ;
struct TYPE_3__ {int /*<<< orphan*/ * name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct menu*) ; 
 int /*<<< orphan*/  FUNC1 (struct menu*) ; 
 scalar_t__ FUNC2 (struct menu*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct menu *menu)
{
	struct menu *child;

	FUNC3(FUNC1(menu), NULL,
		     menu->file == NULL ? "Root Menu" : menu->file->name,
		     menu->lineno);

	if (menu->sym != NULL && FUNC2(menu))
		FUNC3(FUNC0(menu), menu->sym->name,
			     menu->file == NULL ? "Root Menu" : menu->file->name,
			     menu->lineno);

	for (child = menu->list; child != NULL; child = child->next)
		if (child->prompt != NULL)
			FUNC4(child);
}