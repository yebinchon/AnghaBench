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
struct dso {int /*<<< orphan*/ * symbol_names; } ;
typedef  enum map_type { ____Placeholder_map_type } map_type ;

/* Variables and functions */
 struct symbol* FUNC0 (int /*<<< orphan*/ *,char const*) ; 

struct symbol *FUNC1(struct dso *dso, enum map_type type,
					const char *name)
{
	return FUNC0(&dso->symbol_names[type], name);
}