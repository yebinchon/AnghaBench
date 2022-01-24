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
struct symbol {unsigned int weak; struct symbol* next; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 struct symbol* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct symbol*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC4 (char const*) ; 

__attribute__((used)) static struct symbol *FUNC5(const char *name, unsigned int weak,
				   struct symbol *next)
{
	struct symbol *s = FUNC0(FUNC1(sizeof(*s) + FUNC4(name) + 1));

	FUNC2(s, 0, sizeof(*s));
	FUNC3(s->name, name);
	s->weak = weak;
	s->next = next;
	return s;
}