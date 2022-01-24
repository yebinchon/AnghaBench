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
struct process_kallsyms_args {struct dso* dso; struct map* map; } ;
struct map {int dummy; } ;
struct dso {int dummy; } ;

/* Variables and functions */
 int FUNC0 (char const*,struct process_kallsyms_args*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  map__process_kallsym_symbol ; 

__attribute__((used)) static int FUNC1(struct dso *dso, const char *filename,
				  struct map *map)
{
	struct process_kallsyms_args args = { .map = map, .dso = dso, };
	return FUNC0(filename, &args, map__process_kallsym_symbol);
}