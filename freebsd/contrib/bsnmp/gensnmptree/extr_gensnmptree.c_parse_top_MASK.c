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
struct type {int is_enum; int is_bits; int /*<<< orphan*/  syntax; } ;
struct node {int dummy; } ;
typedef  enum tok { ____Placeholder_tok } tok ;

/* Variables and functions */
 int TOK_BITS ; 
 int TOK_ENUM ; 
 scalar_t__ TOK_FILENAME ; 
 int TOK_INCLUDE ; 
 scalar_t__ TOK_STR ; 
 int TOK_TYPEDEF ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct type* FUNC2 (int /*<<< orphan*/ ) ; 
 struct node* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int*,struct type*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  str ; 
 int /*<<< orphan*/  val ; 

__attribute__((used)) static struct node *
FUNC7(enum tok tok)
{
	struct type *t;

	if (tok == '(')
		return (FUNC3(tok));

	if (tok == TOK_TYPEDEF) {
		if (FUNC0() != TOK_STR)
			FUNC6("type name expected after typedef");

		t = FUNC2(str);

		tok = FUNC0();
		t->is_enum = (tok == TOK_ENUM);
		t->is_bits = (tok == TOK_BITS);

		t->syntax = FUNC4(&tok, t, NULL, NULL);
		FUNC5(tok);

		return (NULL);
	}

	if (tok == TOK_INCLUDE) {
		if (FUNC0() != TOK_FILENAME)
			FUNC6("filename expected in include directive");

		FUNC1(str, val);
		return (NULL);
	}

	FUNC6("'(' or 'typedef' expected");
}