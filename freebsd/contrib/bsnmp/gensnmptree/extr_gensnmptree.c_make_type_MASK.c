#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct type {int /*<<< orphan*/  enums; int /*<<< orphan*/  from_lno; void* from_fname; int /*<<< orphan*/  syntax; scalar_t__ is_enum; void* name; } ;
struct TYPE_2__ {char const* fname; int /*<<< orphan*/  lno; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct type*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SNMP_SYNTAX_NULL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* input ; 
 int /*<<< orphan*/  link ; 
 void* FUNC2 (char const*) ; 
 int /*<<< orphan*/  types ; 
 struct type* FUNC3 (int) ; 

__attribute__((used)) static struct type *
FUNC4(const char *s)
{
	struct type *t;

	t = FUNC3(sizeof(*t));
	t->name = FUNC2(s);
	t->is_enum = 0;
	t->syntax = SNMP_SYNTAX_NULL;
	t->from_fname = FUNC2(input->fname);
	t->from_lno = input->lno;
	FUNC1(&t->enums);
	FUNC0(&types, t, link);

	return (t);
}