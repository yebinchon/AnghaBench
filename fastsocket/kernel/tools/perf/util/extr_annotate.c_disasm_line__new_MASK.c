#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  raw; } ;
struct disasm_line {int offset; struct disasm_line* line; TYPE_1__ ops; int /*<<< orphan*/  name; } ;
typedef  int s64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct disasm_line*) ; 
 scalar_t__ FUNC1 (struct disasm_line*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct disasm_line*) ; 
 struct disasm_line* FUNC3 (char*) ; 
 struct disasm_line* FUNC4 (int) ; 

__attribute__((used)) static struct disasm_line *FUNC5(s64 offset, char *line, size_t privsize)
{
	struct disasm_line *dl = FUNC4(sizeof(*dl) + privsize);

	if (dl != NULL) {
		dl->offset = offset;
		dl->line = FUNC3(line);
		if (dl->line == NULL)
			goto out_delete;

		if (offset != -1) {
			if (FUNC1(dl->line, &dl->name, &dl->ops.raw) < 0)
				goto out_free_line;

			FUNC0(dl);
		}
	}

	return dl;

out_free_line:
	FUNC2(dl->line);
out_delete:
	FUNC2(dl);
	return NULL;
}