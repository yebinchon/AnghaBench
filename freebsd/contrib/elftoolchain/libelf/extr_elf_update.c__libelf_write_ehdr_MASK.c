#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct _Elf_Extent {scalar_t__ ex_type; scalar_t__ ex_start; } ;
typedef  int /*<<< orphan*/  src ;
typedef  int /*<<< orphan*/  off_t ;
typedef  int /*<<< orphan*/  dst ;
struct TYPE_10__ {int e_class; int /*<<< orphan*/  e_byteorder; int /*<<< orphan*/  e_version; } ;
struct TYPE_9__ {unsigned char* d_buf; size_t d_size; int /*<<< orphan*/  d_version; int /*<<< orphan*/  d_type; } ;
typedef  TYPE_1__ Elf_Data ;
typedef  TYPE_2__ Elf ;

/* Variables and functions */
 scalar_t__ ELF_EXTENT_EHDR ; 
 int /*<<< orphan*/  ELF_TOFILE ; 
 int /*<<< orphan*/  ELF_T_EHDR ; 
 void* FUNC0 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_2__*) ; 
 size_t FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,size_t) ; 
 size_t FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static off_t
FUNC7(Elf *e, unsigned char *nf, struct _Elf_Extent *ex)
{
	int ec, em;
	void *ehdr;
	size_t fsz, msz;
	Elf_Data dst, src;

	FUNC5(ex->ex_type == ELF_EXTENT_EHDR);
	FUNC5(ex->ex_start == 0); /* Ehdr always comes first. */

	ec = e->e_class;

	ehdr = FUNC0(e, ec, 0);
	FUNC5(ehdr != NULL);

	fsz = FUNC2(ELF_T_EHDR, ec, e->e_version, (size_t) 1);
	msz = FUNC3(ELF_T_EHDR, ec, e->e_version);

	em = FUNC1(e);

	(void) FUNC6(&dst, 0, sizeof(dst));
	(void) FUNC6(&src, 0, sizeof(src));

	src.d_buf     = ehdr;
	src.d_size    = msz;
	src.d_type    = ELF_T_EHDR;
	src.d_version = dst.d_version = e->e_version;

	dst.d_buf     = nf;
	dst.d_size    = fsz;

	if (FUNC4(&dst, &src, e->e_byteorder, ec, em, ELF_TOFILE) ==
	    NULL)
		return ((off_t) -1);

	return ((off_t) fsz);
}