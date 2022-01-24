#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char* name; char* value; struct TYPE_4__* fow; } ;
typedef  TYPE_1__ OPLIST ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int) ; 
 TYPE_1__* ophead ; 
 TYPE_1__* optail ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC3 (char*,char) ; 
 char* FUNC4 (char const*) ; 

int
FUNC5(const char *str)
{
	OPLIST *opt;
	char *frpt;
	char *pt;
	char *endpt;
	char *lstr;

	if ((str == NULL) || (*str == '\0')) {
		FUNC2(0, "Invalid option name");
		return(-1);
	}
	if ((lstr = FUNC4(str)) == NULL) {
		FUNC2(0, "Unable to allocate space for option list");
		return(-1);
	}
	frpt = endpt = lstr;

	/*
	 * break into name and values pieces and stuff each one into a
	 * OPLIST structure. When we know the format, the format specific
	 * option function will go through this list
	 */
	while ((frpt != NULL) && (*frpt != '\0')) {
		if ((endpt = FUNC3(frpt, ',')) != NULL)
			*endpt = '\0';
		if ((pt = FUNC3(frpt, '=')) == NULL) {
			FUNC2(0, "Invalid options format");
			FUNC0(lstr);
			return(-1);
		}
		if ((opt = (OPLIST *)FUNC1(sizeof(OPLIST))) == NULL) {
			FUNC2(0, "Unable to allocate space for option list");
			FUNC0(lstr);
			return(-1);
		}
		lstr = NULL;	/* parts of string going onto the OPLIST */
		*pt++ = '\0';
		opt->name = frpt;
		opt->value = pt;
		opt->fow = NULL;
		if (endpt != NULL)
			frpt = endpt + 1;
		else
			frpt = NULL;
		if (ophead == NULL) {
			optail = ophead = opt;
			continue;
		}
		optail->fow = opt;
		optail = opt;
	}
	FUNC0(lstr);
	return(0);
}