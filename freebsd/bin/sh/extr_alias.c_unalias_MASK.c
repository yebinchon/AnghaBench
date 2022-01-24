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
struct alias {char* name; int flag; struct alias* next; } ;

/* Variables and functions */
 int ALIASINUSE ; 
 int /*<<< orphan*/  INTOFF ; 
 int /*<<< orphan*/  INTON ; 
 int /*<<< orphan*/  aliases ; 
 scalar_t__ FUNC0 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct alias*) ; 
 struct alias** FUNC2 (char const*) ; 

__attribute__((used)) static int
FUNC3(const char *name)
{
	struct alias *ap, **app;

	app = FUNC2(name);

	for (ap = *app; ap; app = &(ap->next), ap = ap->next) {
		if (FUNC0(name, ap->name)) {
			/*
			 * if the alias is currently in use (i.e. its
			 * buffer is being used by the input routine) we
			 * just null out the name instead of freeing it.
			 * We could clear it out later, but this situation
			 * is so rare that it hardly seems worth it.
			 */
			if (ap->flag & ALIASINUSE)
				*ap->name = '\0';
			else {
				INTOFF;
				*app = ap->next;
				FUNC1(ap);
				INTON;
			}
			aliases--;
			return (0);
		}
	}

	return (1);
}