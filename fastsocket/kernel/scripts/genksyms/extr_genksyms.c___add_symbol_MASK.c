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
struct symbol {int type; char const* name; int is_declared; int is_extern; int status; scalar_t__ is_override; struct symbol* hash_next; int /*<<< orphan*/ * visited; int /*<<< orphan*/ * expansion_trail; struct string_list* defn; } ;
struct string_list {int dummy; } ;
typedef  enum symbol_type { ____Placeholder_symbol_type } symbol_type ;
typedef  enum symbol_status { ____Placeholder_symbol_status } symbol_status ;

/* Variables and functions */
 unsigned long HASH_BUCKETS ; 
 int STATUS_DEFINED ; 
 int STATUS_MODIFIED ; 
 int STATUS_UNCHANGED ; 
 unsigned long FUNC0 (char const*) ; 
 int /*<<< orphan*/  debugfile ; 
 scalar_t__ FUNC1 (struct string_list*,struct string_list*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 scalar_t__ flag_debug ; 
 scalar_t__ flag_preserve ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct symbol*) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  nsyms ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct string_list*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int,char const*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC10 (char const*,char const*) ; 
 char** symbol_type_name ; 
 struct symbol** symtab ; 
 struct symbol* FUNC11 (int) ; 

__attribute__((used)) static struct symbol *FUNC12(const char *name, enum symbol_type type,
			    struct string_list *defn, int is_extern,
			    int is_reference)
{
	unsigned long h = FUNC0(name) % HASH_BUCKETS;
	struct symbol *sym;
	enum symbol_status status = STATUS_UNCHANGED;

	for (sym = symtab[h]; sym; sym = sym->hash_next) {
		if (FUNC6(sym->type) == FUNC6(type) &&
		    FUNC10(name, sym->name) == 0) {
			if (is_reference)
				/* fall through */ ;
			else if (sym->type == type &&
				 FUNC1(sym->defn, defn)) {
				if (!sym->is_declared && sym->is_override) {
					FUNC8();
					FUNC9(type, name);
					FUNC3(stderr, " modversion is "
						"unchanged\n");
				}
				sym->is_declared = 1;
				return sym;
			} else if (!sym->is_declared) {
				if (sym->is_override && flag_preserve) {
					FUNC8();
					FUNC3(stderr, "ignoring ");
					FUNC9(type, name);
					FUNC3(stderr, " modversion change\n");
					sym->is_declared = 1;
					return sym;
				} else {
					status = FUNC5(sym) ?
						STATUS_DEFINED : STATUS_MODIFIED;
				}
			} else {
				FUNC2("redefinition of %s", name);
				return sym;
			}
			break;
		}
	}

	if (sym) {
		struct symbol **psym;

		for (psym = &symtab[h]; *psym; psym = &(*psym)->hash_next) {
			if (*psym == sym) {
				*psym = sym->hash_next;
				break;
			}
		}
		--nsyms;
	}

	sym = FUNC11(sizeof(*sym));
	sym->name = name;
	sym->type = type;
	sym->defn = defn;
	sym->expansion_trail = NULL;
	sym->visited = NULL;
	sym->is_extern = is_extern;

	sym->hash_next = symtab[h];
	symtab[h] = sym;

	sym->is_declared = !is_reference;
	sym->status = status;
	sym->is_override = 0;

	if (flag_debug) {
		FUNC3(debugfile, "Defn for %s %s == <",
			symbol_type_name[type], name);
		if (is_extern)
			FUNC4("extern ", debugfile);
		FUNC7(debugfile, defn);
		FUNC4(">\n", debugfile);
	}

	++nsyms;
	return sym;
}