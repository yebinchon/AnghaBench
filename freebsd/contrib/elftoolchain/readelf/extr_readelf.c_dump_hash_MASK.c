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
struct section {scalar_t__ type; int entsize; } ;
struct TYPE_2__ {scalar_t__ e_machine; } ;
struct readelf {size_t shnum; TYPE_1__ ehdr; struct section* sl; } ;

/* Variables and functions */
 scalar_t__ EM_ALPHA ; 
 scalar_t__ SHT_GNU_HASH ; 
 scalar_t__ SHT_HASH ; 
 int /*<<< orphan*/  FUNC0 (struct readelf*,struct section*) ; 
 int /*<<< orphan*/  FUNC1 (struct section*) ; 
 int /*<<< orphan*/  FUNC2 (struct readelf*,struct section*) ; 

__attribute__((used)) static void
FUNC3(struct readelf *re)
{
	struct section	*s;
	int		 i;

	for (i = 0; (size_t) i < re->shnum; i++) {
		s = &re->sl[i];
		if (s->type == SHT_HASH || s->type == SHT_GNU_HASH) {
			if (s->type == SHT_GNU_HASH)
				FUNC0(re, s);
			else if (re->ehdr.e_machine == EM_ALPHA &&
			    s->entsize == 8)
				FUNC2(re, s);
			else
				FUNC1(s);
		}
	}
}