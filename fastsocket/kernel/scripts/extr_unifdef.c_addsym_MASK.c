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

/* Variables and functions */
 scalar_t__ MAXSYMS ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int FUNC1 (char*) ; 
 int* ignore ; 
 scalar_t__ nsyms ; 
 char* FUNC2 (char*) ; 
 char** symname ; 
 int /*<<< orphan*/  FUNC3 () ; 
 char** value ; 

__attribute__((used)) static void
FUNC4(bool ignorethis, bool definethis, char *sym)
{
	int symind;
	char *val;

	symind = FUNC1(sym);
	if (symind < 0) {
		if (nsyms >= MAXSYMS)
			FUNC0(2, "too many symbols");
		symind = nsyms++;
	}
	symname[symind] = sym;
	ignore[symind] = ignorethis;
	val = sym + (FUNC2(sym) - sym);
	if (definethis) {
		if (*val == '=') {
			value[symind] = val+1;
			*val = '\0';
		} else if (*val == '\0')
			value[symind] = "";
		else
			FUNC3();
	} else {
		if (*val != '\0')
			FUNC3();
		value[symind] = NULL;
	}
}