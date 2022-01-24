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
struct module {int dummy; } ;
struct kernel_symbol {scalar_t__ value; } ;

/* Variables and functions */
 struct kernel_symbol* FUNC0 (char const*,struct module**,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (struct module*) ; 

void *FUNC4(const char *symbol)
{
	struct module *owner;
	const struct kernel_symbol *sym;

	FUNC1();
	sym = FUNC0(symbol, &owner, NULL, true, true);
	if (sym && FUNC3(owner))
		sym = NULL;
	FUNC2();

	return sym ? (void *)sym->value : NULL;
}