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
typedef  scalar_t__ (* symbol_filter_t ) (struct map*,struct symbol*) ;
struct symbol {int dummy; } ;
struct map {size_t type; } ;
struct dso {int /*<<< orphan*/ * symbols; int /*<<< orphan*/  long_name; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  STB_GLOBAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (char**,size_t*,int /*<<< orphan*/ *) ; 
 int FUNC5 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct symbol*) ; 
 struct symbol* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct symbol*) ; 

__attribute__((used)) static int FUNC9(struct dso *dso, struct map *map,
			      symbol_filter_t filter)
{
	char *line = NULL;
	size_t n;
	FILE *file;
	int nr_syms = 0;

	file = FUNC2(dso->long_name, "r");
	if (file == NULL)
		goto out_failure;

	while (!FUNC1(file)) {
		u64 start, size;
		struct symbol *sym;
		int line_len, len;

		line_len = FUNC4(&line, &n, file);
		if (line_len < 0)
			break;

		if (!line)
			goto out_failure;

		line[--line_len] = '\0'; /* \n */

		len = FUNC5(line, &start);

		len++;
		if (len + 2 >= line_len)
			continue;

		len += FUNC5(line + len, &size);

		len++;
		if (len + 2 >= line_len)
			continue;

		sym = FUNC7(start, size, STB_GLOBAL, line + len);

		if (sym == NULL)
			goto out_delete_line;

		if (filter && filter(map, sym))
			FUNC6(sym);
		else {
			FUNC8(&dso->symbols[map->type], sym);
			nr_syms++;
		}
	}

	FUNC3(line);
	FUNC0(file);

	return nr_syms;

out_delete_line:
	FUNC3(line);
out_failure:
	return -1;
}