#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct section {char* name; int /*<<< orphan*/  scn; } ;
struct readelf {int dummy; } ;
struct TYPE_3__ {scalar_t__ d_size; int /*<<< orphan*/  d_buf; } ;
typedef  TYPE_1__ Elf_Data ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct readelf*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 () ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct section*,int*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(struct readelf *re, struct section *s)
{
	Elf_Data *d;
	int elferr, len;

	(void) FUNC2();
	if ((d = FUNC3(s->scn, NULL)) == NULL) {
		elferr = FUNC2();
		if (elferr != 0)
			FUNC6("elf_rawdata failed: %s",
			    FUNC1(elferr));
		return;
	}
	if (d->d_size <= 0)
		return;
	if (!FUNC4(s, &len))
		return;

	FUNC5("\nSection '%s' contains %d entries:\n", s->name, len);
	FUNC0(re, d->d_buf, d->d_size);
}