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
struct event_symbol {char* symbol; char* alias; } ;

/* Variables and functions */
 int MAX_NAME_LEN ; 
 char** event_type_descriptors ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,char*,char*) ; 
 scalar_t__ FUNC2 (char*,char const*) ; 
 scalar_t__ FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 

__attribute__((used)) static void FUNC5(const char *event_glob, unsigned type,
				struct event_symbol *syms, unsigned max,
				bool name_only)
{
	unsigned i, printed = 0;
	char name[MAX_NAME_LEN];

	for (i = 0; i < max; i++, syms++) {

		if (event_glob != NULL && 
		    !(FUNC2(syms->symbol, event_glob) ||
		      (syms->alias && FUNC2(syms->alias, event_glob))))
			continue;

		if (name_only) {
			FUNC0("%s ", syms->symbol);
			continue;
		}

		if (FUNC3(syms->alias))
			FUNC1(name, MAX_NAME_LEN, "%s OR %s", syms->symbol, syms->alias);
		else
			FUNC4(name, syms->symbol, MAX_NAME_LEN);

		FUNC0("  %-50s [%s]\n", name, event_type_descriptors[type]);

		printed++;
	}

	if (printed)
		FUNC0("\n");
}