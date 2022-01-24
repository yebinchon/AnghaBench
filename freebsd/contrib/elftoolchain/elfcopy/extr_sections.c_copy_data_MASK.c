#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct section {int /*<<< orphan*/  sz; int /*<<< orphan*/ * buf; scalar_t__ nocopy; int /*<<< orphan*/  os; int /*<<< orphan*/  name; int /*<<< orphan*/  is; } ;
struct TYPE_5__ {int d_align; int /*<<< orphan*/  d_version; int /*<<< orphan*/  d_size; int /*<<< orphan*/  d_type; int /*<<< orphan*/ * d_buf; scalar_t__ d_off; } ;
typedef  TYPE_1__ Elf_Data ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 () ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

void
FUNC6(struct section *s)
{
	Elf_Data	*id, *od;
	int		 elferr;

	if (s->nocopy && s->buf == NULL)
		return;

	if ((id = FUNC2(s->is, NULL)) == NULL) {
		(void) FUNC1();
		if ((id = FUNC4(s->is, NULL)) == NULL) {
			elferr = FUNC1();
			if (elferr != 0)
				FUNC5(EXIT_FAILURE, "failed to read section:"
				    " %s", s->name);
			return;
		}
	}

	if ((od = FUNC3(s->os)) == NULL)
		FUNC5(EXIT_FAILURE, "elf_newdata() failed: %s",
		    FUNC0(-1));

	if (s->nocopy) {
		/* Use s->buf as content if s->nocopy is set. */
		od->d_align	= id->d_align;
		od->d_off	= 0;
		od->d_buf	= s->buf;
		od->d_type	= id->d_type;
		od->d_size	= s->sz;
		od->d_version	= id->d_version;
	} else {
		od->d_align	= id->d_align;
		od->d_off	= id->d_off;
		od->d_buf	= id->d_buf;
		od->d_type	= id->d_type;
		od->d_size	= id->d_size;
		od->d_version	= id->d_version;
	}

	/*
	 * Alignment Fixup. libelf does not allow the alignment for
	 * Elf_Data descriptor to be set to 0. In this case we workaround
	 * it by setting the alignment to 1.
	 *
	 * According to the ELF ABI, alignment 0 and 1 has the same
	 * meaning: the section has no alignment constraints.
	 */
	if (od->d_align == 0)
		od->d_align = 1;
}