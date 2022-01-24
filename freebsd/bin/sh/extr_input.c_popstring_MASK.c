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
struct strpush {char* prevstring; struct strpush* prev; int /*<<< orphan*/  prevlleft; int /*<<< orphan*/  prevnleft; TYPE_1__* ap; } ;
struct TYPE_4__ {struct strpush basestrpush; struct strpush* strpush; } ;
struct TYPE_3__ {char* val; int /*<<< orphan*/  flag; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALIASINUSE ; 
 int /*<<< orphan*/  INTOFF ; 
 int /*<<< orphan*/  INTON ; 
 int /*<<< orphan*/  FUNC0 (struct strpush*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_2__* parsefile ; 
 int /*<<< orphan*/  parselleft ; 
 char* parsenextc ; 
 int /*<<< orphan*/  parsenleft ; 

__attribute__((used)) static void
FUNC2(void)
{
	struct strpush *sp = parsefile->strpush;

	INTOFF;
	if (sp->ap) {
		if (parsenextc != sp->ap->val &&
		    (parsenextc[-1] == ' ' || parsenextc[-1] == '\t'))
			FUNC1();
		sp->ap->flag &= ~ALIASINUSE;
	}
	parsenextc = sp->prevstring;
	parsenleft = sp->prevnleft;
	parselleft = sp->prevlleft;
/*out2fmt_flush("*** calling popstring: restoring to '%s'\n", parsenextc);*/
	parsefile->strpush = sp->prev;
	if (sp != &(parsefile->basestrpush))
		FUNC0(sp);
	INTON;
}