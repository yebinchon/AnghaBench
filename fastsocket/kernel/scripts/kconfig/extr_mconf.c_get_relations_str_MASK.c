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
struct symbol {int dummy; } ;
struct gstr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct gstr*,struct symbol*) ; 
 int /*<<< orphan*/  FUNC2 (struct gstr*,int /*<<< orphan*/ ) ; 
 struct gstr FUNC3 () ; 

__attribute__((used)) static struct gstr FUNC4(struct symbol **sym_arr)
{
	struct symbol *sym;
	struct gstr res = FUNC3();
	int i;

	for (i = 0; sym_arr && (sym = sym_arr[i]); i++)
		FUNC1(&res, sym);
	if (!i)
		FUNC2(&res, FUNC0("No matches found.\n"));
	return res;
}