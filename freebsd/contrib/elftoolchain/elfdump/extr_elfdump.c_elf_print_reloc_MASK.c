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
struct section {scalar_t__ type; int /*<<< orphan*/  scn; int /*<<< orphan*/  name; } ;
struct elfdump {size_t shnum; int /*<<< orphan*/  snl; struct section* sl; } ;
typedef  int /*<<< orphan*/  Elf_Data ;

/* Variables and functions */
 scalar_t__ SHT_REL ; 
 scalar_t__ SHT_RELA ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct elfdump*,struct section*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct elfdump*,struct section*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct elfdump*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(struct elfdump *ed)
{
	struct section	*s;
	Elf_Data	*data;
	size_t		 i;
	int		 elferr;

	for (i = 0; i < ed->shnum; i++) {
		s = &ed->sl[i];
		if ((s->type == SHT_REL || s->type == SHT_RELA) &&
		    (FUNC0(&ed->snl) || FUNC6(ed, s->name))) {
			(void) FUNC2();
			if ((data = FUNC3(s->scn, NULL)) == NULL) {
				elferr = FUNC2();
				if (elferr != 0)
					FUNC7("elf_getdata failed: %s",
					    FUNC1(elferr));
				continue;
			}
			if (s->type == SHT_REL)
				FUNC4(ed, s, data);
			else
				FUNC5(ed, s, data);
		}
	}
}