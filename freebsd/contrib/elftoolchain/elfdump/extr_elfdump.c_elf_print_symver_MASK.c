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
struct section {scalar_t__ type; int /*<<< orphan*/  name; } ;
struct elfdump {size_t shnum; int /*<<< orphan*/  snl; struct section* sl; } ;

/* Variables and functions */
 scalar_t__ SHT_SUNW_verdef ; 
 scalar_t__ SHT_SUNW_verneed ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct elfdump*,struct section*) ; 
 int /*<<< orphan*/  FUNC2 (struct elfdump*,struct section*) ; 
 int /*<<< orphan*/  FUNC3 (struct elfdump*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct elfdump *ed)
{
	struct section	*s;
	size_t		 i;

	for (i = 0; i < ed->shnum; i++) {
		s = &ed->sl[i];
		if (!FUNC0(&ed->snl) && !FUNC3(ed, s->name))
			continue;
		if (s->type == SHT_SUNW_verdef)
			FUNC1(ed, s);
		if (s->type == SHT_SUNW_verneed)
			FUNC2(ed, s);
	}
}