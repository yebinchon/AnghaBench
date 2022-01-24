#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/ * e_phdr64; int /*<<< orphan*/ * e_phdr32; } ;
struct TYPE_9__ {size_t e_nphdr; TYPE_1__ e_phdr; } ;
struct TYPE_10__ {TYPE_2__ e_elf; } ;
struct TYPE_11__ {int e_class; scalar_t__ e_version; TYPE_3__ e_u; } ;
typedef  int /*<<< orphan*/  Elf64_Phdr ;
typedef  int /*<<< orphan*/  Elf32_Phdr ;
typedef  TYPE_4__ Elf ;

/* Variables and functions */
 int /*<<< orphan*/  ARGUMENT ; 
 int ELFCLASS32 ; 
 int ELFCLASS64 ; 
 int /*<<< orphan*/  ELF_C_SET ; 
 int /*<<< orphan*/  ELF_F_DIRTY ; 
 int /*<<< orphan*/  ELF_T_PHDR ; 
 scalar_t__ EV_CURRENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RESOURCE ; 
 int /*<<< orphan*/  SEQUENCE ; 
 void* FUNC1 (TYPE_4__*,int,int /*<<< orphan*/ ) ; 
 size_t FUNC2 (int /*<<< orphan*/ ,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 void* FUNC4 (size_t,size_t) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 

void *
FUNC7(Elf *e, int ec, size_t count)
{
	void *ehdr, *newphdr, *oldphdr;
	size_t msz;

	if (e == NULL) {
		FUNC0(ARGUMENT, 0);
		return (NULL);
	}

	if ((ehdr = FUNC1(e, ec, 0)) == NULL) {
		FUNC0(SEQUENCE, 0);
		return (NULL);
	}

	FUNC3(e->e_class == ec);
	FUNC3(ec == ELFCLASS32 || ec == ELFCLASS64);
	FUNC3(e->e_version == EV_CURRENT);

	msz = FUNC2(ELF_T_PHDR, ec, e->e_version);

	FUNC3(msz > 0);

	newphdr = NULL;
	if (count > 0 && (newphdr = FUNC4(count, msz)) == NULL) {
		FUNC0(RESOURCE, 0);
		return (NULL);
	}

	if (ec == ELFCLASS32) {
		if ((oldphdr = (void *) e->e_u.e_elf.e_phdr.e_phdr32) != NULL)
			FUNC6(oldphdr);
		e->e_u.e_elf.e_phdr.e_phdr32 = (Elf32_Phdr *) newphdr;
	} else {
		if ((oldphdr = (void *) e->e_u.e_elf.e_phdr.e_phdr64) != NULL)
			FUNC6(oldphdr);
		e->e_u.e_elf.e_phdr.e_phdr64 = (Elf64_Phdr *) newphdr;
	}

	e->e_u.e_elf.e_nphdr = count;

	FUNC5(e, ELF_C_SET, ELF_F_DIRTY);

	return (newphdr);
}