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
struct symbol {char* name; int flags; struct symbol* next; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int SYMBOL_CHOICE ; 
 int SYMBOL_CONST ; 
 int SYMBOL_HASHSIZE ; 
 int /*<<< orphan*/  S_UNKNOWN ; 
 struct symbol* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct symbol*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 char* FUNC3 (char const*) ; 
 int FUNC4 (char const*) ; 
 struct symbol** symbol_hash ; 
 struct symbol symbol_mod ; 
 struct symbol symbol_no ; 
 struct symbol symbol_yes ; 

struct symbol *FUNC5(const char *name, int flags)
{
	struct symbol *symbol;
	char *new_name;
	int hash;

	if (name) {
		if (name[0] && !name[1]) {
			switch (name[0]) {
			case 'y': return &symbol_yes;
			case 'm': return &symbol_mod;
			case 'n': return &symbol_no;
			}
		}
		hash = FUNC4(name) % SYMBOL_HASHSIZE;

		for (symbol = symbol_hash[hash]; symbol; symbol = symbol->next) {
			if (symbol->name &&
			    !FUNC2(symbol->name, name) &&
			    (flags ? symbol->flags & flags
				   : !(symbol->flags & (SYMBOL_CONST|SYMBOL_CHOICE))))
				return symbol;
		}
		new_name = FUNC3(name);
	} else {
		new_name = NULL;
		hash = 0;
	}

	symbol = FUNC0(sizeof(*symbol));
	FUNC1(symbol, 0, sizeof(*symbol));
	symbol->name = new_name;
	symbol->type = S_UNKNOWN;
	symbol->flags |= flags;

	symbol->next = symbol_hash[hash];
	symbol_hash[hash] = symbol;

	return symbol;
}