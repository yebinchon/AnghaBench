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
struct strlist {int dummy; } ;
struct sort_entry {int elide; } ;
struct TYPE_2__ {char* s; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char const*,char*) ; 
 TYPE_1__* FUNC1 (struct strlist*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct strlist*) ; 

void FUNC3(struct sort_entry *self, struct strlist *list,
			     const char *list_name, FILE *fp)
{
	if (list && FUNC2(list) == 1) {
		if (fp != NULL)
			FUNC0(fp, "# %s: %s\n", list_name,
				FUNC1(list, 0)->s);
		self->elide = true;
	}
}