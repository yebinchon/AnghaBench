#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct section {char* name; int /*<<< orphan*/  scn; } ;
struct readelf {size_t shnum; struct section* sl; } ;
struct TYPE_4__ {scalar_t__ d_size; int /*<<< orphan*/ * d_buf; } ;
typedef  TYPE_1__ Elf_Data ;

/* Variables and functions */
 int /*<<< orphan*/  STR_DUMP ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 () ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (struct readelf*,size_t,char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (unsigned char) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (char) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(struct readelf *re)
{
	struct section *s;
	Elf_Data *d;
	unsigned char *start, *end, *buf_end;
	unsigned int len;
	int i, j, elferr, found;

	for (i = 1; (size_t) i < re->shnum; i++) {
		s = &re->sl[i];
		if (FUNC4(re, (size_t) i, s->name, STR_DUMP, -1) == NULL)
			continue;
		(void) FUNC1();
		if ((d = FUNC2(s->scn, NULL)) == NULL &&
		    (d = FUNC3(s->scn, NULL)) == NULL) {
			elferr = FUNC1();
			if (elferr != 0)
				FUNC8("elf_getdata failed: %s",
				    FUNC0(elferr));
			continue;
		}
		(void) FUNC1();
		if (d->d_size <= 0 || d->d_buf == NULL) {
			FUNC6("\nSection '%s' has no data to dump.\n",
			    s->name);
			continue;
		}
		buf_end = (unsigned char *) d->d_buf + d->d_size;
		start = (unsigned char *) d->d_buf;
		found = 0;
		FUNC6("\nString dump of section '%s':\n", s->name);
		for (;;) {
			while (start < buf_end && !FUNC5(*start))
				start++;
			if (start >= buf_end)
				break;
			end = start + 1;
			while (end < buf_end && FUNC5(*end))
				end++;
			FUNC6("  [%6lx]  ",
			    (long) (start - (unsigned char *) d->d_buf));
			len = end - start;
			for (j = 0; (unsigned int) j < len; j++)
				FUNC7(start[j]);
			FUNC7('\n');
			found = 1;
			if (end >= buf_end)
				break;
			start = end + 1;
		}
		if (!found)
			FUNC6("  No strings found in this section.");
		FUNC7('\n');
	}
}