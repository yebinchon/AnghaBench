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
struct string_list {struct string_list* next; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 struct string_list** FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(FILE * f, struct string_list *list)
{
	struct string_list **e, **b;
	struct string_list *tmp, **tmp2;
	int elem = 1;

	if (list == NULL) {
		FUNC1("(nil)", f);
		return;
	}

	tmp = list;
	while ((tmp = tmp->next) != NULL)
		elem++;

	b = FUNC0(elem * sizeof(*e));
	e = b + elem;
	tmp2 = e - 1;

	(*tmp2--) = list;
	while ((list = list->next) != NULL)
		*(tmp2--) = list;

	while (b != e) {
		FUNC2(f, *b++);
		FUNC3(' ', f);
	}
}