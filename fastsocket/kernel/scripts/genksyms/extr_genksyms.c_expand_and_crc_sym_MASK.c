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
struct symbol {struct symbol* visited; void* expansion_trail; struct string_list* defn; } ;
struct string_list {int tag; char* string; struct string_list* next; } ;

/* Variables and functions */
#define  SYM_ENUM 132 
#define  SYM_NORMAL 131 
#define  SYM_STRUCT 130 
#define  SYM_TYPEDEF 129 
#define  SYM_UNION 128 
 struct symbol* FUNC0 (char*,int,struct string_list*,int /*<<< orphan*/ ) ; 
 struct string_list** FUNC1 (int) ; 
 int /*<<< orphan*/  debugfile ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*) ; 
 void* expansion_trail ; 
 struct symbol* FUNC3 (char*,int) ; 
 int /*<<< orphan*/  flag_dump_defs ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*,...) ; 
 unsigned long FUNC5 (char*,unsigned long) ; 
 unsigned long FUNC6 (char,unsigned long) ; 
 char** symbol_type_name ; 
 struct symbol* visited_symbols ; 
 struct string_list* FUNC7 (int) ; 
 void* FUNC8 (char*) ; 

__attribute__((used)) static unsigned long FUNC9(struct symbol *sym, unsigned long crc)
{
	struct string_list *list = sym->defn;
	struct string_list **e, **b;
	struct string_list *tmp, **tmp2;
	int elem = 1;

	if (!list)
		return crc;

	tmp = list;
	while ((tmp = tmp->next) != NULL)
		elem++;

	b = FUNC1(elem * sizeof(*e));
	e = b + elem;
	tmp2 = e - 1;

	*(tmp2--) = list;
	while ((list = list->next) != NULL)
		*(tmp2--) = list;

	while (b != e) {
		struct string_list *cur;
		struct symbol *subsym;

		cur = *(b++);
		switch (cur->tag) {
		case SYM_NORMAL:
			if (flag_dump_defs)
				FUNC4(debugfile, "%s ", cur->string);
			crc = FUNC5(cur->string, crc);
			crc = FUNC6(' ', crc);
			break;

		case SYM_TYPEDEF:
			subsym = FUNC3(cur->string, cur->tag);
			/* FIXME: Bad reference files can segfault here. */
			if (subsym->expansion_trail) {
				if (flag_dump_defs)
					FUNC4(debugfile, "%s ", cur->string);
				crc = FUNC5(cur->string, crc);
				crc = FUNC6(' ', crc);
			} else {
				subsym->expansion_trail = expansion_trail;
				expansion_trail = subsym;
				crc = FUNC9(subsym, crc);
			}
			break;

		case SYM_STRUCT:
		case SYM_UNION:
		case SYM_ENUM:
			subsym = FUNC3(cur->string, cur->tag);
			if (!subsym) {
				struct string_list *n, *t = NULL;

				FUNC2("expand undefined %s %s",
					       symbol_type_name[cur->tag],
					       cur->string);

				n = FUNC7(sizeof(*n));
				n->string = FUNC8(symbol_type_name[cur->tag]);
				n->tag = SYM_NORMAL;
				n->next = t;
				t = n;

				n = FUNC7(sizeof(*n));
				n->string = FUNC8(cur->string);
				n->tag = SYM_NORMAL;
				n->next = t;
				t = n;

				n = FUNC7(sizeof(*n));
				n->string = FUNC8("{");
				n->tag = SYM_NORMAL;
				n->next = t;
				t = n;

				n = FUNC7(sizeof(*n));
				n->string = FUNC8("UNKNOWN");
				n->tag = SYM_NORMAL;
				n->next = t;
				t = n;

				n = FUNC7(sizeof(*n));
				n->string = FUNC8("}");
				n->tag = SYM_NORMAL;
				n->next = t;
				t = n;

				subsym =
				    FUNC0(cur->string, cur->tag, n, 0);
			}
			if (subsym->expansion_trail) {
				if (flag_dump_defs) {
					FUNC4(debugfile, "%s %s ",
						symbol_type_name[cur->tag],
						cur->string);
				}

				crc = FUNC5(symbol_type_name[cur->tag],
						    crc);
				crc = FUNC6(' ', crc);
				crc = FUNC5(cur->string, crc);
				crc = FUNC6(' ', crc);
			} else {
				subsym->expansion_trail = expansion_trail;
				expansion_trail = subsym;
				crc = FUNC9(subsym, crc);
			}
			break;
		}
	}

	{
		static struct symbol **end = &visited_symbols;

		if (!sym->visited) {
			*end = sym;
			end = &sym->visited;
			sym->visited = (struct symbol *)-1L;
		}
	}

	return crc;
}