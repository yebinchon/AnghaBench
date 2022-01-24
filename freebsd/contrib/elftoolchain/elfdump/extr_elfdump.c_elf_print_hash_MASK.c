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
struct section {scalar_t__ type; int entsize; int /*<<< orphan*/  name; } ;
struct TYPE_2__ {scalar_t__ e_machine; } ;
struct elfdump {size_t shnum; TYPE_1__ ehdr; int /*<<< orphan*/  snl; struct section* sl; } ;

/* Variables and functions */
 scalar_t__ EM_ALPHA ; 
 scalar_t__ SHT_GNU_HASH ; 
 scalar_t__ SHT_HASH ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct elfdump*,struct section*) ; 
 int /*<<< orphan*/  FUNC2 (struct elfdump*,struct section*) ; 
 int /*<<< orphan*/  FUNC3 (struct elfdump*,struct section*) ; 
 scalar_t__ FUNC4 (struct elfdump*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct elfdump *ed)
{
	struct section	*s;
	size_t		 i;

	for (i = 0; i < ed->shnum; i++) {
		s = &ed->sl[i];
		if ((s->type == SHT_HASH || s->type == SHT_GNU_HASH) &&
		    (FUNC0(&ed->snl) || FUNC4(ed, s->name))) {
			if (s->type == SHT_GNU_HASH)
				FUNC1(ed, s);
			else if (ed->ehdr.e_machine == EM_ALPHA &&
			    s->entsize == 8)
				FUNC3(ed, s);
			else
				FUNC2(ed, s);
		}
	}
}