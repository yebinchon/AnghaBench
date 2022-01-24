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
typedef  size_t uintmax_t ;
struct section {size_t name; scalar_t__ flags; size_t link; size_t info; scalar_t__ entsize; scalar_t__ align; scalar_t__ sz; scalar_t__ off; scalar_t__ addr; int /*<<< orphan*/  type; } ;
struct TYPE_2__ {int /*<<< orphan*/  e_machine; } ;
struct elfdump {int flags; size_t shnum; TYPE_1__ ehdr; struct section* sl; int /*<<< orphan*/  snl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int SOLARIS_FMT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 size_t FUNC2 (scalar_t__) ; 
 size_t FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct elfdump *ed)
{
	struct section *s;
	size_t i;

	if (!FUNC1(&ed->snl))
		return;

	if ((ed->flags & SOLARIS_FMT) == 0)
		FUNC0("\nsection header:\n");
	for (i = 0; i < ed->shnum; i++) {
		s = &ed->sl[i];
		if (ed->flags & SOLARIS_FMT) {
			if (i == 0)
				continue;
			FUNC0("\nSection Header[%zu]:", i);
			FUNC0("  sh_name: %s\n", s->name);
			FUNC0("    sh_addr:      %#-14jx", (uintmax_t)s->addr);
			if (s->flags != 0)
				FUNC0("  sh_flags:   [ %s ]\n", FUNC2(s->flags));
			else
				FUNC0("  sh_flags:   0\n");
			FUNC0("    sh_size:      %#-14jx", (uintmax_t)s->sz);
			FUNC0("  sh_type:    [ %s ]\n",
			    FUNC3(ed->ehdr.e_machine, s->type));
			FUNC0("    sh_offset:    %#-14jx", (uintmax_t)s->off);
			FUNC0("  sh_entsize: %#jx\n", (uintmax_t)s->entsize);
			FUNC0("    sh_link:      %-14u", s->link);
			FUNC0("  sh_info:    %u\n", s->info);
			FUNC0("    sh_addralign: %#jx\n", (uintmax_t)s->align);
		} else {
			FUNC0("\n");
			FUNC0("entry: %ju\n", (uintmax_t)i);
			FUNC0("\tsh_name: %s\n", s->name);
			FUNC0("\tsh_type: %s\n",
			    FUNC3(ed->ehdr.e_machine, s->type));
			FUNC0("\tsh_flags: %s\n", FUNC2(s->flags));
			FUNC0("\tsh_addr: %#jx\n", (uintmax_t)s->addr);
			FUNC0("\tsh_offset: %ju\n", (uintmax_t)s->off);
			FUNC0("\tsh_size: %ju\n", (uintmax_t)s->sz);
			FUNC0("\tsh_link: %u\n", s->link);
			FUNC0("\tsh_info: %u\n", s->info);
			FUNC0("\tsh_addralign: %ju\n", (uintmax_t)s->align);
			FUNC0("\tsh_entsize: %ju\n", (uintmax_t)s->entsize);
		}
	}
}