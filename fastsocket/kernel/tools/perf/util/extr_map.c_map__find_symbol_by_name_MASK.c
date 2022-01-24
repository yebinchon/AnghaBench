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
typedef  int /*<<< orphan*/  symbol_filter_t ;
struct symbol {int dummy; } ;
struct map {int /*<<< orphan*/  type; int /*<<< orphan*/  dso; } ;

/* Variables and functions */
 struct symbol* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct map*,int /*<<< orphan*/ ) ; 

struct symbol *FUNC4(struct map *self, const char *name,
					symbol_filter_t filter)
{
	if (FUNC3(self, filter) < 0)
		return NULL;

	if (!FUNC2(self->dso, self->type))
		FUNC1(self->dso, self->type);

	return FUNC0(self->dso, self->type, name);
}