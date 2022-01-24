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
typedef  int /*<<< orphan*/  u64 ;
struct map {int dummy; } ;
struct machine {int /*<<< orphan*/  kmaps; int /*<<< orphan*/  kernel_dsos; } ;
struct dso {int /*<<< orphan*/  symtab_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  DSO_BINARY_TYPE__GUEST_KMODULE ; 
 int /*<<< orphan*/  DSO_BINARY_TYPE__SYSTEM_PATH_KMODULE ; 
 int /*<<< orphan*/  MAP__FUNCTION ; 
 struct dso* FUNC0 (int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC1 (struct machine*) ; 
 struct map* FUNC2 (int /*<<< orphan*/ ,struct dso*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct map*) ; 

struct map *FUNC4(struct machine *machine, u64 start,
				const char *filename)
{
	struct map *map;
	struct dso *dso = FUNC0(&machine->kernel_dsos, filename);

	if (dso == NULL)
		return NULL;

	map = FUNC2(start, dso, MAP__FUNCTION);
	if (map == NULL)
		return NULL;

	if (FUNC1(machine))
		dso->symtab_type = DSO_BINARY_TYPE__SYSTEM_PATH_KMODULE;
	else
		dso->symtab_type = DSO_BINARY_TYPE__GUEST_KMODULE;
	FUNC3(&machine->kmaps, map);
	return map;
}