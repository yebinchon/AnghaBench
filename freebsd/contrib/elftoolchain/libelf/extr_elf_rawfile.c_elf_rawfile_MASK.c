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
struct TYPE_3__ {size_t e_rawsize; unsigned char* e_rawfile; scalar_t__ e_cmd; } ;
typedef  TYPE_1__ Elf ;

/* Variables and functions */
 int /*<<< orphan*/  ARGUMENT ; 
 scalar_t__ ELF_C_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SEQUENCE ; 

char *
FUNC1(Elf *e, size_t *sz)
{
	size_t size;
	unsigned char *ptr;

	size = e ? e->e_rawsize : 0;
	ptr = NULL;

	if (e == NULL)
		FUNC0(ARGUMENT, 0);
	else if ((ptr = e->e_rawfile) == NULL && e->e_cmd == ELF_C_WRITE)
		FUNC0(SEQUENCE, 0);

	if (sz)
		*sz = size;

	return ((char *) ptr);
}