#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct symbol {int dummy; } ;
struct rb_root {int dummy; } ;
struct map {struct dso* dso; } ;
struct dso {char* long_name; } ;
struct TYPE_4__ {TYPE_1__* src; } ;
struct TYPE_3__ {int /*<<< orphan*/  source; } ;

/* Variables and functions */
 struct rb_root RB_ROOT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct rb_root*,char const*) ; 
 scalar_t__ FUNC2 (struct symbol*,struct map*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct symbol*,struct map*,int,int,int,int,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC4 (struct symbol*) ; 
 int /*<<< orphan*/  FUNC5 (struct symbol*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct symbol*,struct map*,int,struct rb_root*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC7 (struct symbol*) ; 

int FUNC8(struct symbol *sym, struct map *map, int evidx,
			 bool print_lines, bool full_paths, int min_pcnt,
			 int max_lines)
{
	struct dso *dso = map->dso;
	const char *filename = dso->long_name;
	struct rb_root source_line = RB_ROOT;
	u64 len;

	if (FUNC2(sym, map, 0) < 0)
		return -1;

	len = FUNC7(sym);

	if (print_lines) {
		FUNC6(sym, map, evidx, &source_line,
					len, filename);
		FUNC1(&source_line, filename);
	}

	FUNC3(sym, map, evidx, full_paths,
				min_pcnt, max_lines, 0);
	if (print_lines)
		FUNC5(sym, len);

	FUNC0(&FUNC4(sym)->src->source);

	return 0;
}