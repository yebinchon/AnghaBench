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
struct section {int /*<<< orphan*/ * name; } ;
struct readelf {size_t shnum; struct section* sl; int /*<<< orphan*/  dbg; } ;

/* Variables and functions */
 int /*<<< orphan*/  DW_FRAME_CFA_COL ; 
 int /*<<< orphan*/  FUNC0 (struct readelf*,struct section*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void
FUNC3(struct readelf *re, int alt)
{
	struct section *s;
	int i;

	(void) FUNC1(re->dbg, DW_FRAME_CFA_COL);

	for (i = 0; (size_t) i < re->shnum; i++) {
		s = &re->sl[i];
		if (s->name != NULL && (!FUNC2(s->name, ".debug_frame") ||
		    !FUNC2(s->name, ".eh_frame")))
			FUNC0(re, s, alt);
	}
}