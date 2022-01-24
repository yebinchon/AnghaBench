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
struct str {scalar_t__ nfields; int done; void* tag; } ;

/* Variables and functions */
 int BUFLEN ; 
 struct str* curstr ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* linep ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 void** nodename ; 
 struct str** nodestr ; 
 int nstr ; 
 size_t ntypes ; 
 void* FUNC2 (char*) ; 
 struct str* str ; 
 scalar_t__ FUNC3 (void*,char*) ; 

__attribute__((used)) static void
FUNC4(void)
{
	char name[BUFLEN];
	char tag[BUFLEN];
	struct str *sp;

	if (curstr && curstr->nfields > 0)
		curstr->done = 1;
	FUNC1(name);
	if (! FUNC1(tag))
		FUNC0("Tag expected");
	if (*linep != '\0')
		FUNC0("Garbage at end of line");
	nodename[ntypes] = FUNC2(name);
	for (sp = str ; sp < str + nstr ; sp++) {
		if (FUNC3(sp->tag, tag) == 0)
			break;
	}
	if (sp >= str + nstr) {
		sp->tag = FUNC2(tag);
		sp->nfields = 0;
		curstr = sp;
		nstr++;
	}
	nodestr[ntypes] = sp;
	ntypes++;
}