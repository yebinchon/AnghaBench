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
typedef  void* u_int ;
struct type {int is_enum; int is_bits; int /*<<< orphan*/  enums; void* syntax; } ;
struct enums {long value; void* name; } ;
typedef  enum tok { ____Placeholder_tok } tok ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct enums*,int /*<<< orphan*/ ) ; 
 int TOK_BITS ; 
 int TOK_DEFTYPE ; 
 int TOK_ENUM ; 
 int TOK_EOF ; 
 int TOK_NUM ; 
 char TOK_STR ; 
 char FUNC1 () ; 
 int /*<<< orphan*/  link ; 
 struct type* FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 void* FUNC4 () ; 
 void* val ; 
 struct enums* FUNC5 (int) ; 

__attribute__((used)) static u_int
FUNC6(enum tok *tok, struct type *t, const char *vname, char **subtype)
{
	u_int syntax;
	struct enums *e;

	syntax = val;
	if (subtype != NULL)
		*subtype = NULL;

	if (*tok == TOK_ENUM || *tok == TOK_BITS) {
		if (t == NULL && vname != NULL) {
			t = FUNC2(vname);
			t->is_enum = (*tok == TOK_ENUM);
			t->is_bits = (*tok == TOK_BITS);
			t->syntax = syntax;
		}
		if (FUNC1() != '(')
			FUNC3("'(' expected after ENUM");

		if ((*tok = FUNC1()) == TOK_EOF)
			FUNC3("unexpected EOF in ENUM");
		do {
			e = NULL;
			if (t != NULL) {
				e = FUNC5(sizeof(*e));
			}
			if (*tok == '-') {
				if ((*tok = FUNC1()) == TOK_EOF)
					FUNC3("unexpected EOF in ENUM");
				e->value = -(long)val;
			} else
				e->value = val;

			if (*tok != TOK_NUM)
				FUNC3("need value for ENUM/BITS");
			if (FUNC1() != TOK_STR)
				FUNC3("need string in ENUM/BITS");
			e->name = FUNC4();
			FUNC0(&t->enums, e, link);
			if ((*tok = FUNC1()) == TOK_EOF)
				FUNC3("unexpected EOF in ENUM/BITS");
		} while (*tok != ')');
		*tok = FUNC1();

	} else if (*tok == TOK_DEFTYPE) {
		*tok = FUNC1();

	} else {
		if ((*tok = FUNC1()) == '|') {
			if (FUNC1() != TOK_STR)
				FUNC3("subtype expected after '|'");
			if (subtype != NULL)
				*subtype = FUNC4();
			*tok = FUNC1();
		}
	}

	return (syntax);
}