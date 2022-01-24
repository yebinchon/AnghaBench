#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ d_size; char* d_buf; } ;
struct TYPE_5__ {scalar_t__ sh_type; } ;
typedef  TYPE_1__ GElf_Shdr ;
typedef  int /*<<< orphan*/  Elftc_String_Table ;
typedef  int /*<<< orphan*/  Elf_Scn ;
typedef  TYPE_2__ Elf_Data ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 scalar_t__ SHT_STRTAB ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC5 (char const*) ; 

Elftc_String_Table *
FUNC6(Elf_Scn *scn, size_t sizehint)
{
	Elf_Data *d;
	GElf_Shdr sh;
	const char *s, *end;
	Elftc_String_Table *st;
	size_t len;

	/* Verify the type of the section passed in. */
	if (FUNC4(scn, &sh) == NULL ||
	    sh.sh_type != SHT_STRTAB) {
		errno = EINVAL;
		return (NULL);
	}

	if ((d = FUNC0(scn, NULL)) == NULL ||
	    d->d_size == 0) {
		errno = EINVAL;
		return (NULL);
	}

	if ((st = FUNC1(sizehint)) == NULL)
		return (NULL);

	s = d->d_buf;

	/*
	 * Verify that the first byte of the data buffer is '\0'.
	 */
	if (*s != '\0') {
		errno = EINVAL;
		goto fail;
	}

	end = s + d->d_size;

	/*
	 * Skip the first '\0' and insert the strings in the buffer,
	 * in order.
	 */
	for (s += 1; s < end; s += len) {
		if (FUNC3(st, s) == 0)
			goto fail;

		len = FUNC5(s) + 1; /* Include space for the trailing NUL. */
	}

	return (st);

fail:
	if (st)
		(void) FUNC2(st);

	return (NULL);
}